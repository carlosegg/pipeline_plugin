#!/bin/bash
[ -z $DP_HOME ] && DP_HOME=$(python3 -c 'import os,sys;print (os.path.realpath(sys.argv[1]))' $0/..)
dp_help_message='This command has not any help


Usage: dp_COMMAND.sh'
dp_help_phase='docs'


source $DP_HOME/dp_help.sh $*
if [ "$DEBUG_PIPELINE" == "TRUE" ]; then
   set -x
else
   set +x
fi

source $DP_HOME/phases/build/dp_task.sh "docs"