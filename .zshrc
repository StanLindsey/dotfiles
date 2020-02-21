# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ulimit -n 1024
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# Stan Favs: mh, agnoster,
ZSH_THEME=cobalt2
DEFAULT_USER="stanlindsey"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-nvm git brew osx npm z fasd zsh-autosuggestions)

#Set brew permissions
#alias brew='$echo <password> | sudo chown -R $(whoami):admin /usr/local/{bin,share} && brew';

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin/eslint/:/usr/local/lib/"

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#. `brew --prefix`/etc/profile.d/z.sh

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Custom Aliases
alias c="code .";
alias ls='gls --color -h --group-directories-first -a'
alias pg="echo 'Pinging Google' && ping www.google.com";
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias npm-update="npx npm-check -u";
alias yarn-update="yarn upgrade-interactive --latest";

## npm aliases
alias ni="npm install";
alias nrs="npm run start -s --";
alias nrb="npm run build -s --";
alias nrd="npm run dev -s --";
alias nrt="npm run test -s --";
alias nrtw="npm run test:watch -s --";
alias nrv="npm run validate -s --";
alias rmn="rm -rf node_modules";
alias flush-npm="rm -rf node_modules && npm i && say NPM is done";
alias nicache="npm install --prefer-offline";
alias nioff="npm install --offline";

## yarn aliases
alias yar="yarn run";
alias yas="yarn run start";
alias yab="yarn run build";
alias yat="yarn run test";
alias yav="yarn run validate";
alias yoff="yarn add --offline";

# Recursively make directories & touch the file
rtouch() {
  for p do
    if [[ "$p" =~ '/'$ ]]; then
      mkdir -p -- "$p"
    else
      _dir="$(dirname -- "$p")"
      mkdir -p -- "$_dir" &&
        touch -- "$p"
    fi
  done
}
