#!/bin/sh
# @ job_name           = SRA056234-Picea-glauca-2012-12-22-14
# @ job_type           = bluegene
# @ comment            = "white spruce for the win !"
# @ output             = $(job_name).$(Host).$(jobid).out
# @ error              = $(job_name).$(Host).$(jobid).err
# @ bg_size            = 512
# @ wall_clock_limit   = 48:00:00
# @ bg_connectivity    = Torus
# @ queue 

#  512 * 16 =  8192
#  768 * 16 = 12288
# 1024 * 16 = 16384

runjob --np 4096 --ranks-per-node=8 --cwd=$PWD \
: /home/c/clumeq/sebhtml/software/ray/Last-Build/Ray SRA056234-Picea-glauca.conf

