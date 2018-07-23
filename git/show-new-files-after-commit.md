# Show new files after commit

I was looking for a command to list the new files created after a specific commit. This can be achieved by running `git diff --name-status <commit-id>` and then filtering the output with `grep ^A` or by simply running `git diff --color --name-only --diff-filter=A <commit-id>`.