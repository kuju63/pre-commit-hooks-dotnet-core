#!/bin/bash

PARAMS="--nologo -v m"
for OPT in "$@"
do
    case $OPT in
        -p | --project)
            if [[ -z "$2" ]]; then
                exit 1
            fi
            PROJECT=$2
            ;;
        *)
            shift 1
            ;;
    esac
done

if [[ -z "$PROJECT" ]]; then
    echo "-p option is requirement option."
    exit 1
fi
exec dotnet test $PARAMS $PROJECT