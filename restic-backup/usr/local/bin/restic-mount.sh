#!/bin/bash

source /home/backblaze-bak/.credentials/env/media-backblaze

restic -p /home/backblaze-bak/.credentials/restic_media_offsite.txt -r b2:restic-backup-media mount --allow-other /mnt/restic

source /home/backblaze-bak/.credentials/env/media-backblaze-reset
