#!/bin/bash
OWNER="cecilia-rt3"
REPO="graphes"
TOKEN=$(cat ~/token.gh)

while read -r ID; do
  [ -n "$ID" ] || continue
  echo "Téléchargement de l'artefact $ID..."
  curl -sL \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $TOKEN" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "https://api.github.com/repos/$OWNER/$REPO/actions/artifacts/$ID/zip" \
    --output "artifact-$ID.zip"
  unzip -o "artifact-$ID.zip" -d "artifact-$ID"
done < liste-id.txt
