RET=0

echo "Scanning for .py files ..."
for file in $(find . -type f -name '*.py'); do
  echo "Checking $file ..."
  LONG_LINES=$(awk 'length($0) > 80' "$file")
  if [ -n "$LONG_LINES" ]; then
    echo "File '$file' has lines over 80 characters:"
    awk 'length($0) > 80 { print FNR ": " $0 }' "$file"
    RET=1
  fi
done

if [ $RET -eq 0 ]; then
  echo "No lines over 80 characters found!"
fi

exit $RET