#!/usr/bin/env bash

OVERRIDE_DIR=$1
OVERRIDE_FILE=$2

if [ -z "$OVERRIDE_DIR" ]
  then
    echo "No override destination provided"
fi

if [ -z "$OVERRIDE_FILE" ]
  then
    echo "No override filename provided"
fi

if   [[ -d $OVERRIDE_DIR ]]
  then
    echo "--- Clearing old override"
    rm "$OVERRIDE_DIR"/"$OVERRIDE_FILE"

    echo "--- Building new override"
    npm run build

    echo "--- Copying new override to destination"
    cp bundle/"$OVERRIDE_FILE" "$OVERRIDE_DIR"

    echo "--- Successfully overrode $OVERRIDE_FILE"
else
  echo "${OVERRIDE_DIR} is not a directory";
fi
