#!/bin/bash
cryptsetup luksOpen /dev/disk/by-uuid/28271588-00bb-445e-a113-caf3cbbb15a5 privdata
mount /dev/mapper/privdata /mnt/privdata/
