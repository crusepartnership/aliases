alias gitlc="git rev-parse --abbrev-ref HEAD | xargs git log --graph --abbrev-commit --decorate  --first-parent | grep -e '\[.*\]' -m 1 | cut -c 7-"
alias _jira="gitlc | sed -E 's/.*\[(.+)\].*/\1/g'"
alias jira="_jira | pbcopy && _jira"
alias viewjira="_jira | xargs -I{} -n1 bash -c 'open "https://integralcs.atlassian.net/browse/{}"'"


