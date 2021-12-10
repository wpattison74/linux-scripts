#!/bin/bash
# Purpose: Display the ARM CPU and GPU temps.
# -------------------------------------------------------
cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "$(date) @ $(hostname)"
echo "-------------------------------------------"
echo "GPU => $(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')'C"
echo "CPU => $((cpu/1000))'C"
