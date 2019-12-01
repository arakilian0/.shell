# PARSE GIT BRANCH
# Resource: https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
# ---------------------------------------------------------------------------
# Use the following function during prompt assignment to append the
# current directory's selected git branch to your terminal prompt.
# ---------------------------------------------------------------------------
# Function | parse_git_branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PROMPT
# Resource: http://osxdaily.com/2006/12/11/how-to-customize-your-terminal-prompt/
# -------------------------------------------------------------------------------
# Customize the terminal prompt using the following flags and $(parse_git_branch)

# \d – Current date
# \t – Current time
# \h – Host name
# \# – Command number
# \u – User name
# \W – Current working directory (ie: Desktop/)
# \w – Current working directory with full path (ie: /Users/Admin/Desktop/)
# -------------------------------------------------------------------------------
export PS1="\[\033[35m\]\w\[\033[30m\]\$(parse_git_branch)\[\033[00m\] $ "

# Extra
# Styling Options
# --------------------------------------
# export GREP_OPTIONS='--color=auto'
# export CLICOLOR=1
# export LSCOLORS=Exfxcxdxbxegedabagacad

# PATH
# Resource: https://www.cyberciti.biz/faq/appleosx-bash-unix-change-set-path-environment-variable/
# ------------------------------------------------------------------------------------------------
# Let's say you got some executables in a subdirectory of your ~/dev directory.
# Here is how you can set the path to those exectuables, so they can be used
# throughtout the system without having to refer to the actual path every time.

# export PATH=/Users/arakilian0/dev/subdirectory:$PATH

# 1. export PATH=
# 2. The actual path to the executables   (use 'pwd' to get the full path)
# 3. :$PATH
# ------------------------------------------------------------------------------------------------
# So far: X11, python, woff2, .shell
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=/usr/local/bin/woff2:$PATH
export PATH=/Users/arakilian0/dev/.shell/bin:$PATH

# ALIAS
# Resource: https://jonsuh.com/blog/bash-command-line-shortcuts/
# --------------------------------------------------------------
# As simple as:

# alias name="thing"

# 1. alias    |  required keyword
# 2. name     |  the character(s) you want to type in that triggers the command "thing"
# 3. "thing"  |  the command to execute

# Just remember to not leave any space between the equal sign.
# --------------------------------------------------------------

# Quick Commands
alias .="clear"
alias ..="cd .."
alias ls="ls -la"
alias !="exit"

# Directory Shortcuts
alias home="cd ~"
alias dev="cd ~/dev"
alias venv="cd ~/venv"
alias asset="cd ~/asset"
alias story="cd ~/storyboard"
alias shell="cd ~/dev/.shell"
alias pywiz="cd ~/dev/py-wizard"

# Application Launchers
alias spectacle="open -a spectacle"
alias firefox="open -a firefox"
alias postman="open -a postman"
alias dbsqlite="open -a DB\ Browser\ for\ SQLite"
alias pgadmin="open -a pgAdmin\ 4"
alias discord="open -a discord"
alias spotify="open -a spotify"

# Environment Activaters
alias venv.pywiz="source ~/venv/py-wizard/bin/activate"
