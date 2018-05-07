#!/bin/sh

STAGED_CSS_FILES=`git diff --name-only --diff-filter=AMCR HEAD | grep css`
echo $STAGED_CSS_FILES
