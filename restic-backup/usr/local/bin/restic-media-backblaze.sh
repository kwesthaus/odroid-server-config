#!/bin/bash

source /home/backblaze-bak/.credentials/env/media-backblaze

restic -p /home/backblaze-bak/.credentials/restic_media_offsite.txt -r b2:restic-backup-media backup /mnt/media/mine/ --exclude-file=/home/backblaze-bak/restic-media-excludes.txt
restic -p /home/backblaze-bak/.credentials/restic_media_offsite.txt -r b2:restic-backup-media forget --keep-daily 7 --keep-weekly 5 --keep-monthly 12 --keep-yearly 100 --prune
restic -p /home/backblaze-bak/.credentials/restic_media_offsite.txt -r b2:restic-backup-media check

source /home/backblaze-bak/.credentials/env/media-backblaze-reset
