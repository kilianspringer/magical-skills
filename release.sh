#!/usr/bin/env bash
# Baut für jeden Skill eine ZIP-Datei und hängt ALLE an ein neues Release.
#
# Alle, nicht nur den geänderten Skill: Die READMEs verlinken auf
# releases/latest/download/<skill>.zip. Fehlt eine ZIP im neuesten Release,
# liefert dieser Link 404.
#
# Aufruf: ./release.sh v1.0
set -euo pipefail

tag="${1:?Aufruf: ./release.sh <tag>, zum Beispiel ./release.sh v1.0}"
root="$(cd "$(dirname "$0")" && pwd)"
out="$(mktemp -d)"
trap 'rm -rf "$out"' EXIT

shopt -s nullglob
cd "$root/skills"
for dir in */; do
  name="${dir%/}"
  [ -n "$(git ls-files -- "$name/SKILL.md")" ] || continue
  # Nur Dateien aus Git, damit keine .DS_Store oder lokalen Reste öffentlich werden.
  # Die Anleitungen für Menschen (README.md, ANPASSEN.md) bleiben draußen.
  git ls-files -- "$name" \
    | grep -vE "^$name/(README|ANPASSEN)\.md$" \
    | zip -qX "$out/$name.zip" -@
done

ls "$out"/*.zip >/dev/null 2>&1 || { echo "Keine Skills gefunden." >&2; exit 1; }

gh release create "$tag" "$out"/*.zip \
  --repo kilianspringer/magical-skills \
  --title "$tag" \
  --notes "Alle Skills als ZIP-Datei zum Hochladen in Claude (Customize → Skills → Upload a skill)."
