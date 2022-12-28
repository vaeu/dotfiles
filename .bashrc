# modest prompt
case $HOME in
  /root)            PS1='[#] ' ;;
  /home/<username>) PS1='[$] ' ;;
esac

# use a vi-style line editing interface
set -o vi

# alias definitions
if test -f "${XDG_CONFIG_HOME:-/home/<username>/.config}"/aliasrc; then
  . "${XDG_CONFIG_HOME:-/home/<username>/.config}"/aliasrc
fi

# enter SSH passphrase only once
_ssh_env=~/.ssh/agent-environment
_start_agent() {
  /usr/bin/ssh-agent | sed 's/^echo/#&/' > $_ssh_env
  chmod 600 $_ssh_env
  . $_ssh_env >/dev/null 2>&1
  /usr/bin/ssh-add ~/.ssh/github
}
if test -f $_ssh_env && pgrep tmux >/dev/null 2>&1; then
  . $_ssh_env >/dev/null 2>&1
  ps $SSH_AGENT_PID >/dev/null 2>&1 || _start_agent
else
  pgrep tmux >/dev/null 2>&1 && _start_agent
fi
