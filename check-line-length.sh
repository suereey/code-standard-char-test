#!/usr/bin/env bash

# Return code: 0 means success (no lines > 80 chars)
#             non-zero means we found long lines
RET=0

# Look only for .py files
for file in $(find . -type f -name '*.py'); do
  # Use awk to find lines > 80 characters
  LONG_LINES=$(awk 'length($0) > 80' "$file")
  
  if [ -n "$LONG_LINES" ]; then
    echo "File '$file' has lines over 80 characters:"
    awk 'length($0) > 80 { print FNR ": " $0 }' "$file"
    echo ""
    RET=1
  fi
done

exit $RET