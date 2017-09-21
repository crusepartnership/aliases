alias gitlc="git rev-parse --abbrev-ref HEAD | xargs git log --graph --abbrev-commit --decorate  --first-parent | grep -e '\[.*\]' -m 1 | cut -c 7-"
alias jira="gitlc | sed -E 's/.*\[(.+)\].*/\1/g'"
alias viewjira="jira | xargs -I{} -n1 bash -c 'open "https://integralcs.atlassian.net/browse/{}"'"


