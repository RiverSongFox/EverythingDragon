#!/bin/bash

export $(egrep -v '^#' .env | xargs)

LINE=$(shuf -n 1 $TEXT_FILE)
curl -H "Authorization: Bearer $TOKEN" -X POST -d "status=Dragon%20$LINE&visibility=public" $INSTANCE_URL/api/v1/statuses
