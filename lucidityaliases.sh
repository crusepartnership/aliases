ALIASES_DIR="$(dirname "$0")"
alias gitlc="git rev-parse --abbrev-ref HEAD | xargs git log --graph --abbrev-commit --decorate  --first-parent | grep -e '\[.*\]' -m 1 | cut -c 7-"
alias _jira="gitlc | sed -E 's/.*\[(.+)\].*/\1/g'"
alias jira="_jira | tr -d '\n' | pbcopy && _jira"
alias viewjira="jira | xargs -I{} -n1 bash -c 'open "https://integralcs.atlassian.net/browse/{}"'"
alias aliashelp="cat $ALIASES_DIR/help.txt"
alias installhooks="sh $ALIASES_DIR/scripts/installhooks.sh $ALIASES_DIR/../"
alias checkout="sh $ALIASES_DIR/scripts/checkout.sh $ALIASES_DIR/../ "

