#!/bin/sh
# @ job_name           = SRA056234-Picea-glauca-2013-03-06-1
# @ job_type           = bluegene
# @ comment            = ""
# @ output             = $(job_name).$(Host).$(jobid).out
# @ error              = $(job_name).$(Host).$(jobid).err
# @ bg_size            = 1024
# @ wall_clock_limit   = 48:00:00
# @ bg_connectivity    = Torus
# @ queue 

# memory
# 1024 * 16 = 16384 GiB

# cores
#  512 * 16 =  8192
# 1024 * 16 = 16384
#  768 * 16 = 12288
# 1024 * 16 = 16384

# the BGLOCKLESSMPIO_F_TYPE line is to tell MPIIO that we are using GPFS
# 0x47504653 is  GPFS_SUPER_MAGIC

runjob --np 4096 --ranks-per-node=4 --cwd=$PWD \
 --envs BGLOCKLESSMPIO_F_TYPE=0x47504653 \
: /home/c/clumeq/sebhtml/software/ray/Last-Build/Ray SRA056234-Picea-glauca.conf

