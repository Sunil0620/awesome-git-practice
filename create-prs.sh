set -euo pipefail

for i in {1..20}; do
  echo "🚀 Processing coauthor feature $i..."
  
  # Create branch and commit
  git checkout main
  git pull origin main
  git checkout -b "coauthor-feature-$i"
  
  # Ensure the directory exists
  mkdir -p docs/coauthor-features
  
  echo "# Coauthor Feature $i" >> "docs/coauthor-features/coauthor-feature-$i.md"
  git add "docs/coauthor-features/coauthor-feature-$i.md"
  git commit -m "test: add coauthor feature $i" \
    -m "Co-authored-by: Sunil0620 <sunilsaini5652@gmail.com>"
  
  # Push branch
  git push -u origin "coauthor-feature-$i"
  
  # Create PR
  gh pr create \
    --title "test: add coauthor feature $i" \
    --body "Add commit with co-author for badge." \
    --base main \
    --head "coauthor-feature-$i"
  
  # Merge PR
  echo "✅ Merging PR for coauthor feature $i..."
  gh pr merge "coauthor-feature-$i" \
    --squash \
    --delete-branch \
    --auto
  
  # Switch back to main
  git checkout main
  
  # Clean up local branch (in case it wasn't deleted)
  git branch -D "coauthor-feature-$i" 2>/dev/null || true
  
  echo "✨ Completed coauthor feature $i"
  echo "---"
done

echo "🎉 All done! Created, merged, and cleaned up coauthored PRs!"
