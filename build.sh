#!/bin/bash
(cat Doxyfile ;\
 echo "PROJECT_BRIEF = "$1".tpl" ;\
 echo "PROJECT_NUMBER = \""$1" example\"" ;\
 echo "INPUT  = ./"$1"/"$1".tpl";\
 echo "OUTPUT_DIRECTORY  = ./"$1"/dox";\
 echo "HTML_OUTPUT  = html"; ) | doxygen -
