#!/bin/bash

#set -x

printf " My sample program started \n"

printf " total arguments $# \n"

gitdir=true;
gitrepo="/home/bps/git/mgit-shell-project/.git"

addEmptyClient() {
mkdir src/main/java/com/mobolt/clients/$1
mkdir src/test/java/com/mobolt/clients/$1
mkdir config/$1
}


usage_git_dir(){
echo "Commands: addclient <client> : git directory present"
}

usage_not_git_dir(){
echo "Commands: addclient <client> : git directory not present"
}

usage(){
if $gitdir; then
usage_git_dir
else
usage_not_git_dir
fi
}


error(){
exit $1
}



usage_and_exit(){
usage
exit $1
}

addClient(){
	addEmptyClient
}

gitOperation(){
	usage
}

if [ $# -lt 1 ];then

if [ -d ".git" ]; then
gitdir=true
else
gitdir=false 
fi
usage_and_exit 0
fi
