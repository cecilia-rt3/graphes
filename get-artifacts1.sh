#!/bin/bash
# Récupère la liste des artifacts d'un dépôt GitHub via l'API REST

# Variables à modifier :
OWNER="cecilia-rt3"
REPO="graphes"
TOKEN=$(cat ~/token.gh)

# Requête API pour lister les artifacts
curl -s \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/$OWNER/$REPO/actions/artifacts"
