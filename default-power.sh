#!/bin/sh

set -e

# GPU Power
# min: 150W
# max: 275W
# default: 250W

dcgmi config --set -P 250

echo active > /sys/devices/system/cpu/intel_pstate/status

