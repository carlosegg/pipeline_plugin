#!/bin/bash

[ -z "$DP_HOME" ] && echo "[ERROR] DP_HOME must be defined" && exit 1
### HELP section
dp_help_message="This command has not any help
[makefile] compile type
"
source $DP_HOME/dp_help.sh $*
### END HELP section

source $DP_HOME/dp_setEnv.sh

if [ "$DEBUG_PIPELINE" == "TRUE" ]; then
   set -x
else
   set +x
fi


function execute(){
   make clean
   make
}

if [ "$isDevelenv" == "false" ]; then
   execute
fi

