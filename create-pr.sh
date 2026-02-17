set -euo pipefail

# You can adjust the loop count if you want more PRs, but 3 is enough
for i in {1..1}; do
  git checkout main
  git pull origin main
  git checkout -b "coauthor-feature-$i"
  echo "# Coauthor Feature $i" >> "coauthor-feature-$i.md"
  git add "coauthor-feature-$i.md"

  # Commit with blank line before co-author trailer
  git commit -m "test: add coauthor feature $i" \
    -m "Co-authored-by: suniL062 <168222695+suniL062@users.noreply.github.com>"

  git push -u origin "coauthor-feature-$i"
  gh pr create \
    --title "test: add coauthor feature $i" \
    --body "Add commit with co-author for badge." \
    --base main \
    --head "coauthor-feature-$i"
done