#!/bin/sh

STAGED_CSS_FILES=`git diff --name-only --diff-filter=AMCR HEAD | grep \.css`
#echo $STAGED_CSS_FILES

for FILE in $STAGED_CSS_FILES
do
	if [ "$FILE" != "" ]
	then
	  FILEPATH="../"$FILE;
	  #echo $FILEPATH;
	  stylelint $FILEPATH --config=.stylelintrc --fix;
	fi
done
