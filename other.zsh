alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-proxy="chrome --proxy-server=\"socks5://127.0.0.1:8080\" --host-resolver-rules=\"MAP * 0.0.0.0 , EXCLUDE localhost\" --proxy-bypass-list=\"ai-test.uwhis.hosp.wisc.edu\" &>/dev/null &"
alias brewup="brew update && brew upgrade && brew cleanup"
alias resource="source ~/.zshrc"
alias weather="curl http://wttr.in"

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
