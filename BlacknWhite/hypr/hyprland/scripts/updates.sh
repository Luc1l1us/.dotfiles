#!/bin/bash

UPDATES=$(checkupdates | wc -l)
printf "$UPDATES"
