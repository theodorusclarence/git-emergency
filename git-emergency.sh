#!/bin/bash

name=$(git config user.name)
name=${name// /-}

# timestamp in dd-mm-yyyy-hh-mm-ss format
timestamp=$(date +"%d-%m-%Y-%H-%M-%S")

git checkout -b "$name-$timestamp-emergency"
git add .
git commit -nm "feat: emergency commit"
git push --no-verify origin "$name-$timestamp-emergency"

echo ""
echo "-------------"
echo "Emergency commit created on branch $name-$timestamp-emergency"
echo "You may now save yourself"
echo "-------------"