#!/bin/bash
for d in apps/db*/; do
  [ -f "$d/Chart.yaml" ] || continue
  name="$(basename "$d")"
  echo $name
  helm upgrade --install "$name" "$d" \
    --namespace "wow-db" \
    --create-namespace \
    -f ./configs/sec.yaml
done