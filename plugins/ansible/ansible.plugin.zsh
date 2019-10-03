# Functions
function ansible-version(){
    ansible --version
}

function ansible-role-init(){
    if ! [ -z $1] ; then
        echo "Ansible Role : $1 Creating...."
        ansible-galaxy init $1
        tree $1
    else
        echo "Usage : ansible-role-init <role name>"
        echo "Example : ansible-role-init role1"
    fi
}

# Alias
alias a='ansible '
alias aconf='ansible-config '
alias acon='ansible-console '
<<<<<<< HEAD
alias aconn='ansible-connection '
alias aver='ansible-version'
alias arinit='ansible-role-init'
alias aplay='ansible-playbook '
=======
alias aver='ansible-version'
alias arinit='ansible-role-init'
alias aplaybook='ansible-playbook '
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
alias ainv='ansible-inventory '
alias adoc='ansible-doc '
alias agal='ansible-galaxy '
alias apull='ansible-pull '
alias aval='ansible-vault'