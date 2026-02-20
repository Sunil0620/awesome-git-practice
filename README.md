# Awesome Git Practice

## Purpose
A clean, real-world style repository for practicing Git workflows such as branching, pull requests, and merging. The focus is on learning by doing, with small, safe changes that feel like actual collaboration.

## What You Will Practice
- Creating feature branches and keeping them up to date
- Opening pull requests with clear descriptions
- Merging changes and resolving conflicts
- Keeping commit history tidy and meaningful

## Recommended Flow
1. **Fork** this repository (click the "Fork" button at the top right).
2. **Clone** your fork to your local machine.
3. Configure an upstream remote to keep your fork synced:
   `git remote add upstream git@github.com:Sunil0620/awesome-git-practice.git`
4. Create a **new branch** for a small change.
5. Make a **commit** with a clear message (try pair programming with a Co-authored-by tag!).
6. Push your branch and open a **pull request** with a clear description.
7. I'll merge the pull request if there are no conflicts; otherwise request a maintainer for help!

## Step-by-Step Tutorial
Use this walkthrough to practice a clean, realistic Git workflow end to end.

### 1) Clone and Create a Branch
```bash
git clone <your-fork-url>
For example:
git clone git@github.com:Sunil0620/awesome-git-practice.git
cd awesome-git-practice
git checkout -b feature/my-change
```

### 2) Make a Small Change 
Pick a safe file to edit, for example:
- docs/updates.md
- docs/notes.md

Add a short line and save the file.

### 3) Commit with a Clear Message
```bash
git status
git add docs/updates.md
git commit -m "docs: add update log entry"
```

#### Pair Programming Practice (Co-authoring)
If you paired with someone on this change, give them credit by adding a `Co-authored-by` trailer to your commit message!

```bash
git commit -m "docs: add update log entry" -m "Co-authored-by: Their Name <their.email@example.com>"
```

### 4) Push and Open a Pull Request
```bash
git push -u origin feature/my-change
```
Open a pull request on GitHub and describe what changed in 1-3 sentences.

### 5) Merge the Pull Request
Merge the pull request (no review required) and delete the branch if you want.

### 6) Sync Your Main Branch
```bash
git checkout main
git pull origin main
```

## Suggested Exercises
- Add a short note to [docs/notes.md](docs/notes.md).
- Add a short entry to [docs/updates.md](docs/updates.md).
- Improve a heading in [README.md](README.md).
- Resolve a practice conflict in [docs/conflicts.md](docs/conflicts.md).

## Project Structure
- docs/notes.md: Small notes you can safely edit
- docs/updates.md: Short updates you can commit and merge
- docs/conflicts.md: A safe space to practice conflict resolution

## Contributing
Please follow [CONTRIBUTING.md](CONTRIBUTING.md) for conventions.

## Code of Conduct
This project follows the [Code of Conduct](CODE_OF_CONDUCT.md).

## License
See [LICENSE](LICENSE).
