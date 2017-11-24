#!/bin/sh

MAKE="make -f /app/Makefile -C /workspace"

# If there are no arguments, just build
if [ $# -eq 0 ]; then
  eval "$MAKE"
else
  eval "$MAKE $@"
fi
