alias brewup="brew update && brew upgrade && brew cleanup"
alias myip4="dig TXT CH +short whoami.cloudflare @1.1.1.1"

function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}
