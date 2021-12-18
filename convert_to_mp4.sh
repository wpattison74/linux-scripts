#!/bin/bash
# Purpose: Convert all JPEGs into an MP4
# -------------------------------------------------------

ffmpeg -r 25 -f image2 -pattern_type glob -i './*.jpg' -vcodec libx264 -crf 20 -pix_fmt yuvj422p  test.mp4
