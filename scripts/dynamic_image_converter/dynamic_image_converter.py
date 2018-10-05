import sys
import atexit
import random
import time
import math
from os import system
import argparse

import numpy as np

import cv2
from cv_bridge import CvBridge, CvBridgeError

import roslib
import rospy
from sensor_msgs.msg import Image
from sensor_msgs.msg import Imu

bridge = CvBridge()


@atexit.register
def cleanexit():
    system('clear')
    return


def resizeimage(image, percentage):
    return cv2.resize(image, (0, 0), fx=percentage, fy=percentage)


def insert_dynamic_image(image_orig, image_dyn, x, y):
    dynheight = image_dyn.shape[0]
    dynwidth = image_dyn.shape[1]
    if(x + dynwidth > image_orig.shape[1]):
        overlap = x + dynwidth - image_orig.shape[1]
        dynwidth = dynwidth - overlap
        image_dyn = image_dyn[:, 0:dynwidth]
    if(dynwidth > 0):
        if(x < 0):
            diff = dynwidth + x
            image_orig[y:y + dynheight, 0:diff] = image_dyn[:, -x:dynwidth]
        else:
            image_orig[y:y + dynheight, x:x + dynwidth] = image_dyn

    return image_orig


def image_callback(msg):
    global mode
    global image_dyn
    global step
    global starttime
    global delay
    global setstart
    global random

    if(setstart == False):
        starttime = time.time()
        setstart = True

    cv2_img = bridge.imgmsg_to_cv2(msg, "mono8")

    if(time.time() > starttime + delay):

        # passing-by-mode
        if mode == 0:
            width = cv2_img.shape[1] + dynimage.shape[1]
            displacement = (step * speed) % (width / 2)
            x = cv2_img.shape[1] / 2 - dynimage.shape[1] / 2 + displacement
            y = cv2_img.shape[0] / 2 - dynimage.shape[0] / 2
            if random:
                x += random.randint(-5, 5)
                y += random.randint(-5, 5)
            scale = np.interp(displacement, (0.0, width / 2), (0.4, 1))
            image_dyn = resizeimage(dynimage, scale)
            cv2_img = insert_dynamic_image(cv2_img, image_dyn, x, y)

        # crossing-mode
        elif mode == 1:
            x = (step * speed) % (cv2_img.shape[1] +
                                  dynimage.shape[1]) - dynimage.shape[1]
            y = cv2_img.shape[0] / 2 - dynimage.shape[0] / 2
            if random:
                x += random.randint(-5, 5)
                y += random.randint(-5, 5)

            cv2_img = insert_dynamic_image(cv2_img, dynimage, x, y)

        # following-mode
        elif mode == 2:
            x = 0
            y = 0
            if random:
                x += random.randint(-5, 5)
                y += random.randint(-5, 5)

            cv2_img = insert_dynamic_image(cv2_img, dynimage, x, y)

        # sinus-crossing-mode
        elif mode == 3:
            x = (step * speed) % (cv2_img.shape[1] +
                                  dynimage.shape[1]) - dynimage.shape[1]
            ytrig = (((step * speed) % 100) / 100.0) * 2 * math.pi
            y = int(((math.sin(ytrig) + 1.0) / 2.0) *
                    (cv2_img.shape[0] - dynimage.shape[0]))
            # y = cv2_img.shape[0] / 2 - dynimage.shape[0] / 2
            if random:
                x += random.randint(-5, 5)
                y += random.randint(-5, 5)

            cv2_img = insert_dynamic_image(cv2_img, dynimage, x, y)

        # twoobjects-side-mode
        elif mode == 4:
            ytrig = (((step * speed) % 100) / 100.0) * 2 * math.pi
            y1 = int(((math.sin(ytrig) + 1.0) / 2.0) *
                     (cv2_img.shape[0] - dynimage.shape[0]))
            y2 = int(((math.cos(ytrig) + 1.0) / 2.0) *
                     (cv2_img.shape[0] - dynimage.shape[0]))
            x1 = 0
            x2 = cv2_img.shape[1] - dynimage.shape[1]

            cv2_img = insert_dynamic_image(cv2_img, dynimage, x1, y1)
            cv2_img = insert_dynamic_image(cv2_img, dynimage2, x2, y2)

    new_msg = bridge.cv2_to_imgmsg(cv2_img, "mono8")
    new_msg.header = msg.header
    pub_image.publish(new_msg)

    step = step + 1


def imu_callback(msg):
    pub_imu.publish(msg)


def main():
    global dynimage
    global dynimage2
    global speed
    global mode
    global step
    global delay
    global starttime
    global setstart
    global random

    mode = 1
    random = False
    step = 0
    speed = 4.0
    delay = 18
    percentage = 0.75

    parser = argparse.ArgumentParser()
    parser.add_argument("--mode")
    parser.add_argument("--delay")
    parser.add_argument("--percentage")
    parser.add_argument("--speed")
    args = parser.parse_args()

    if args.mode:
        mode = int(args.mode)

    if args.delay:
        delay = int(args.delay)

    if args.percentage:
        percentage = float(args.percentage)

    if args.speed:
        speed = float(args.speed)

    print("\n\n\n")
    print("MODE: " + str(mode))
    print("DELAY: " + str(delay))
    print("SPEED: " + str(speed))
    print("PERCENTAGE: " + str(percentage))
    print("RANDOM: " + str(random))

    starttime = time.time()
    setstart = False
    dynimage = cv2.imread('ml.png')
    dynimage2 = cv2.imread('gu.png')
    dynimage = cv2.cvtColor(dynimage, cv2.COLOR_BGR2GRAY)
    dynimage2 = cv2.cvtColor(dynimage2, cv2.COLOR_BGR2GRAY)
    dynimage = resizeimage(dynimage, percentage)
    dynimage2 = resizeimage(dynimage2, percentage)

    rospy.init_node('dynamic_image_converter')

    image_topic = "/cam0/image_raw"
    imu_topic = "/imu0"

    rospy.Subscriber(image_topic, Image, image_callback)
    rospy.Subscriber(imu_topic, Imu, imu_callback)

    global pub_imu
    global pub_image
    pub_image = rospy.Publisher('/dyn/cam0/image_raw', Image, queue_size=10)
    pub_imu = rospy.Publisher('/dyn/imu0', Imu, queue_size=10)

    rospy.spin()


if __name__ == '__main__':
    main()
