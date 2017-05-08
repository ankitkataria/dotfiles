echo ".cfg">> $HOME/.gitignore
git clone git@github.com:ankitkataria/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir="$HOME/.cfg" --work-tree=$HOME'
# the -p flag gives no error if the dir already exists
mkdir -p $HOME/.cfg-backup
config checkout
if [ $? = 0 ]; then
    echo "Hello Juno. You are Live."
else
    echo "Backing up Default files"
    config checkout 2>&1 | egrep '\s+\.'| awk {'print $1;'}| xargs -I{} mv {} .cfg-backup/{}
fi;
config checkout
if [ $? = 0 ]; then
    echo "Sorry To keep you waiting. Welcome Mr. Juno"
else
    echo "Some Error Occurred"
fi;
config config --local status.showUntrackedFiles no
