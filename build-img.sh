#!/bin/bash

cd /release/coreboot
make crossgcc-x64 CPUS=$(nproc)
make CPUS=$(nproc)
