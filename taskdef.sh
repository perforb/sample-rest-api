#!/bin/bash

cd $(dirname "$0") || exit

while getopts p:a: OPT
do
  case ${OPT} in
    p) ACTIVE_PROFILE=${OPTARG}
      ;;
    a) AWS_ACCOUNT_ID=${OPTARG}
      ;;
    *)
      ;;
  esac
done

if [[ ! "${ACTIVE_PROFILE}" =~ ^(dev|stg|prod)$ ]]; then
  echo "Unexpected profile name: ${ACTIVE_PROFILE}"
  exit 1
fi

cat taskdef-"${ACTIVE_PROFILE}".json | sed -e "s|<AWS_ACCOUNT_ID>|${AWS_ACCOUNT_ID}|g" > taskdef.json
cat taskdef.json
