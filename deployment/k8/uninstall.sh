for d in apps/*/; do
  [ -f "$d/Chart.yaml" ] || continue
  name="$(basename "$d")"
  helm uninstall "$name" --namespace "$name" || true
done