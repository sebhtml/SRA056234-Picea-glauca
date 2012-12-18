#!/bin/sh
# @ job_name           = SRA056234-Picea-glauca-2012-12-18-2
# @ job_type           = bluegene
# @ comment            = "white spruce for the win !"
# @ output             = $(job_name).$(Host).$(jobid).out
# @ error              = $(job_name).$(Host).$(jobid).err
# @ bg_size            = 512
# @ wall_clock_limit   = 48:00:00
# @ bg_connectivity    = Torus
# @ queue 

runjob --np 8192 --ranks-per-node=32 --cwd=$PWD \
: /home/c/clumeq/sebhtml/software/ray/Last-Build/Ray SRA056234-Picea-glauca.conf

