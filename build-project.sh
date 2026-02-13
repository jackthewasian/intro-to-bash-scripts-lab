#!/bin/bash
read -p "Enter the project name: " PROJECT_NAME

mkdir "$PROJECT_NAME"
cd "$PROJECT_NAME"
touch README.md
touch "$PROJECT_NAME.sh"
git init
chmod +x "$PROJECT_NAME.sh"
echo "Project '$PROJECT_NAME' successfully created"
