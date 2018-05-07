#!/bin/sh

STAGED_CSS_FILES=`git diff --cached --name-only --diff-filter=ACMR HEAD | grep \\\\.css`
echo $STAGED_CSS_FILES
