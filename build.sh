#!/bin/bash
if [ $# -lt 1 ]; then
   echo "Usage: build.sh <model tpl root>"
   echo "       for example, build.sh simple"
   exit 1
fi

(cat Doxyfile ;\
 echo "PROJECT_BRIEF = "$1".tpl" ;\
 echo "PROJECT_NUMBER = \""$1" example\"" ;\
 echo "INPUT  = ./"$1"/"$1".tpl";\
 echo "OUTPUT_DIRECTORY  = ./"$1"/dox";\
 echo "HTML_OUTPUT  = html"; ) | doxygen -

exit 0
