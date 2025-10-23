#!/bin/bash
# run.sh - Script to assemble and run MIPS program using MARS simulator.

# Usage: ./run.sh [filename]
# This script assembles and runs the given MIPS assembly file using MARS in headless mode.

if [ -z "$1" ]; then
  echo "Usage: $0 <assembly-file>"
  exit 1
fi

# Path to MARS jar (adjust this path as needed)
MARS_JAR="MARS_MIPS_SIM.jar"

# Run MARS with assembly file
java -jar "$MARS_JAR" nc "$1"
