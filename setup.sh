#!/bin/sh

echo "Type in your github username: "
read github_user

echo "Type in your first and last names (no accent or special characters - e.g. 'ç'): "
read full_name

echo "Type in your email address (the one used for your GitHub account): "
read github_email

mv .gitconfig.local .gitconfig.$(github_user)
sed "s/full_name/$(full_name)/g"  .gitconfig.$(github_user)
sed "s/github_email/$(github_email)/g"  .gitconfig.$(github_user)
sed "s/github_user/$(github_user)/g"  .gitconfig.$(github_user)

sed "s/full_name/$(full_name)/g"  .gitconfig
sed "s/github_email/$(github_email)/g"  .gitconfig
sed "s/github_user/$(github_user)/g"  .gitconfig

sed "s/github_user/$(github_user)/g"  sync.sh

mkdir -p ~/.ssh
mkdir -p ~/.ssh/$(github_user)
ssh-keygen -t ecdsa -b 521 -o -a 100 -f ~/.ssh/$(github_user)/github_key -C "$(github_email)"

echo "Add the following SSH key to GitHub in https://github.com/settings/ssh"
cat ~/.ssh/$(github_user)/github_key

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

zsh ./sync.sh
