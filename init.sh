#!/bin/sh

PRODUCT_NAME=$1
COMPANY_IDENTIFIER=$2

if [ $1 ] && [ $2 ]; then
    find . -type f -print0 | xargs -0 perl -pi -e 's/__PRODUCT_NAME__/'$PRODUCT_NAME'/g'
    find . -type f -print0 | xargs -0 perl -pi -e 's/__COMPANY_IDENTIFIER__/'$COMPANY_IDENTIFIER'/g'
    find . -type f -print0 | xargs -0 perl -pi -e 's/--COMPANY-IDENTIFIER--/'$COMPANY_IDENTIFIER'/g'
    find . -name '*__PRODUCT_NAME__*' | xargs rename s/__PRODUCT_NAME__/$1/
else
    echo 'Usage: ./init.sh ProjectName com.example'
fi
