#!/bin/bash
source ~/.bashrc-exports
source ~/.bashrc-privateexports
source ~/.bashrc-functions
source ~/.bashrc-privatefunctions
source ~/.bashrc-aliases
source ~/.bashrc-privatealiases
[[ -e "${HOME}/.aws-stuff.sh" ]] && source ${HOME}/.aws-stuff.sh
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
#
