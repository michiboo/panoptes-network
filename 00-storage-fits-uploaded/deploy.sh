#!/bin/bash -e

gcloud functions deploy \
                 ack-fits-received \
                 --entry-point ack_fits_received \
                 --runtime python37 \
                 --trigger-resource panoptes-survey \
                 --trigger-event google.storage.object.finalize
