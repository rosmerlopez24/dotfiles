#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit

# Get system variable values for various modules
bash "${HOME}/.config/polybar/system.sh"

# Start bar configurations
echo "---" | tee -a /tmp/polybar1.log
polybar main 2>&1 | tee -a /tmp/polybar1.log &
disown

echo "Bars launched..."
