#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
. $baseDir/util.sh


#######################
# variables
#######################
PY=$baseDir/../app/transitionparser/standard.py
MODEL=$baseDir/../tmp/eager.thu.model
TEST_DATA=$baseDir/../data/evsam05/THU/dev.conllu
TEST_RESULT=$baseDir/../tmp/en-ud-test.standard.results
LOG_VERBOSITY=0 # info

# functions


# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
set -x
test $PY $LOG_VERBOSITY $MODEL $TEST_DATA $TEST_RESULT 
