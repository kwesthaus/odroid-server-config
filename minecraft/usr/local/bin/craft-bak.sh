#!/bin/bash
rsync -rlptDvz --ignore-existing cbus-serv:/home/matt/Documents/*-backups /mnt/media/declassified_tech/games
chown -R laptop:media /mnt/media/declassified_tech/games
