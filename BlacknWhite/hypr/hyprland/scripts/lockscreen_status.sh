#!/bin/bash

# Check if this works
# hypr_check = $(pgrep -if hyprlock)

if pgrep -if hyprlock; then
    printf("🔐")
fi