#!/bin/sh

set -e

# GPU Power
# min: 150W
# max: 275W
# default: 250W

dcgmi config --set -P 275


echo passive > /sys/devices/system/cpu/intel_pstate/status
seq 0 19 | while read line; do cpufreq-set --cpu $line -g userspace; done
seq 0 19 | while read line; do cpufreq-set --cpu $line --max 5200M; done

