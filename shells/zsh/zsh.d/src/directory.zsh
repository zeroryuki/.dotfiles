#
# Provides for an easier use of GPG by setting up gpg-agent.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# make and chdir to dir 
function mkcd() {
    mkdir $1; 
    cd $1 
}
# make dir and move some files into dir
function  mvcd() {
    if [[ ! -d $1 ]]; then
        mkdir $1; 
    fi
    mv -t $@; 
    cd $1
}
# make dir with dirname template being the first argument without extension
function md1() {
    mkdir ${1:t:r}
    mv -t ${1:t:r} $@
}
# md1() but with chdir to that new dir
function md1c() {
    md1 $@
    cd ${1:t:r}
}
