Here is a list of common Git commands along with some of their frequently used flags:

1. **git init**: Initialize a new Git repository.
   - `--bare`: Initialize a bare repository (without a working directory).
   - `--template=<template_directory>`: Use a custom template directory.

2. **git clone**: Clone a repository into a new directory.
   - `--depth=<depth>`: Create a shallow clone with history truncated to the specified number of commits.
   - `--branch=<branch>`: Clone only a specific branch.
   - `--single-branch`: Clone only a single branch, ignoring all other branches.
   - `--recurse-submodules`: Initialize and clone submodules recursively.

3. **git add**: Add file contents to the index (staging area).
   - `-A` or `--all`: Add all changes, including untracked files and removed files.
   - `-u` or `--update`: Add modified and deleted files, but not untracked files.
   - `--patch`: Interactively choose hunks of changes to add.

4. **git commit**: Record changes to the repository.
   - `-m <message>`: Specify the commit message inline.
   - `-a` or `--all`: Automatically stage modified and deleted files before committing.
   - `-C <commit>`: Use the commit message and author information from an existing commit.
   - `--amend`: Amend the last commit by adding changes to it.

5. **git status**: Show the status of the working directory and the index.
   - `-s` or `--short`: Output in a short format.
   - `--branch`: Show information about the current branch.
   - `--porcelain`: Output in an easy-to-parse format.

6. **git checkout**: Switch branches or restore working tree files.
   - `-b <branch>`: Create a new branch and switch to it.
   - `-f` or `--force`: Force checkout, discarding local changes if necessary.
   - `-- <file>`: Restore a specific file.

7. **git branch**: List, create, or delete branches.
   - `-a` or `--all`: List both local and remote branches.
   - `-d <branch>`: Delete a branch.
   - `-r` or `--remotes`: List remote-tracking branches.

8. **git merge**: Join two or more development histories together.
   - `--no-ff`: Always create a merge commit, even if the merge could be performed with a fast-forward.

9. **git pull**: Fetch from and integrate with another repository or a local branch.
   - `--rebase`: Rebase the current branch onto the upstream branch before integrating changes.
   - `-r` or `--rebase=preserve`: Preserve merges during rebase.

10. **git push**: Update remote refs along with associated objects.
    - `-f` or `--force`: Force updates, even if it requires overwriting changes.
    - `--tags`: Push tags (in addition to branches).
    - `--delete <branch>`: Delete a remote branch.

These are just a selection of common Git commands and flags. Git has many more commands and options for various tasks and scenarios.
