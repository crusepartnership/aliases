SCRIPT_PATH=$0
if [ $SCRIPT_PATH = '-bash' ]; then
  SCRIPT_PATH=${BASH_ARGV[0]}
fi
ALIASES_DIR=$(dirname "$SCRIPT_PATH")
alias gitlc="git rev-parse --abbrev-ref HEAD | xargs git log --graph --abbrev-commit --decorate  --first-parent | grep -e '\[.*\]' -m 1 | cut -c 7-"
alias _jira="gitlc | sed -E 's/.*\[(.+)\].*/\1/g'"
alias jira="_jira | tr -d '\n' | pbcopy && _jira"
alias viewjira="jira | xargs -I{} -n1 bash -c 'open "https://integralcs.atlassian.net/browse/{}"'"
alias aliashelp="echo Installed in $ALIASES_DIR && cat $ALIASES_DIR/help.txt"
alias installhooks="sh $ALIASES_DIR/scripts/installhooks.sh $ALIASES_DIR/../"
alias checkout="sh $ALIASES_DIR/scripts/checkout.sh $ALIASES_DIR/../ "
alias cleanremote="sh $ALIASES_DIR/scripts/cleanremote.sh"
alias addauthorizedkey="sh $ALIASES_DIR/scripts/addauthorizedkey.sh"
alias sshslave="sh $ALIASES_DIR/scripts/ssh_slave.sh"
alias sftpslave="sh $ALIASES_DIR/scripts/sftp_slave.sh"
