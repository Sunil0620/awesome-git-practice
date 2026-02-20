# Contributing Guide

## Goal
Keep contributions small, focused, and easy to review. The point is to practice Git workflows, not to build a large product.

## Style
- Use clear, descriptive commit messages.
- Keep changes scoped to a single goal.
- Prefer short paragraphs and readable formatting.

## Branching
- Create a feature branch per change.
- Use simple names like feature/add-note or fix/typo.

## Pull Requests
- Use a short title.
- Explain the intent in 1-3 sentences.
- Link to the exercise you completed (if any).

## Merging
- Merge via the pull request.
- Squash merge is fine for practice.

## How to Write a Good Commit Message
- Use the imperative mood ("Add feature" not "Added feature" or "Adds feature")
- If applicable, use Conventional Commits format:
  - `feat: add new button`
  - `fix: correct typo in docs`
  - `docs: update readme instructions`

## Syncing Your Fork
If you've been working on your fork for a while, you may need to sync it with the upstream repository before opening a PR:
```bash
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
```
