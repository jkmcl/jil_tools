#!/bin/bash

IN_FILE_NAME=$1

tac $IN_FILE_NAME | grep '^\s*insert_job\s*:' | sed -e 's/^[[:space:]]*insert_job[[:space:]]*:[[:space:]]*/delete_job: /' | cut -d ' ' -f 1-2
