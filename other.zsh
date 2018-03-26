alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"
alias forms="cd ~/Projects/cmu/forms"
alias intranet="cd ~/Projects/cmu/intranet && jhome -v 1.7 && sdk use grails 2.2.5"
alias weather="curl http://wttr.in"
alias brewup="brew update && brew upgrade && brew cleanup"

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
