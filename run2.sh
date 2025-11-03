#!/bin/bash
shopt -s nullglob
tool=dot
for a in *.dot; do
  a2="${a%.*}"
  $tool -Tsvg "$a" > "$a2".svg
done

