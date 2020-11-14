#!/usr/bin/env bash

export GIT_PAGER=cat


./pre-deploy.sh


# Abort when user not sure.
if [ $? -ne 0 ]; then
    echo "[!] Halted in pre-deployment: Either user ABORTED or script FAILED"
    exit;
fi


echo ""
echo ""
echo " --- Checking Python version."
poetry run ./check_python_version.py

if [ $? -ne 0 ]; then
    echo "[!] Aborting deployment"
    exit 1;
fi


echo ""
echo ""
echo " --- Pulling remote repository for new commits..."
git fetch


echo ""
echo ""
echo " --- Merging/updating checkout."
git merge FETCH_HEAD


echo ""
echo ""
echo " >>> Running post-deployment script. <<<"
./post-deploy.sh

# Abort on any error
if [ $? -ne 0 ]; then
    echo "[!] Halted. Post-deployment script exited with non-zero code"
    exit;
fi


echo ""
echo ""
echo " --- Deployed version: "
poetry run python -c 'import dsmrreader ; print(dsmrreader.__version__)'


echo ""
echo ""
echo " >>> Deployment complete. <<<"
