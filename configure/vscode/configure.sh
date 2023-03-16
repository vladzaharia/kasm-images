#!/usr/bin/env bash
code --list-extensions

declare -A extensions=(
    "ms-vscode.makefile-tools"
    "yzhang.markdown-all-in-one"
    "42crunch.vscode-openapi"
    "tamasfe.even-better-toml"
    "redhat.vscode-yaml"
    "davidanson.vscode-markdownlint"
    "dbaeumer.vscode-eslint"
    "esbenp.prettier-vscode"
    "eamodio.gitlens"
    "editorconfig.editorconfig"
    "ms-azuretools.vscode-docker"
    "spmeesseman.vscode-taskexplorer"
    "github.vscode-pull-request-github"
    "gitlab.gitlab-workflow"
    "gitpod.gitpod-desktop"
    "ms-vscode.remote-explorer"
    "ms-vscode-remote.remote-ssh"
    "ms-vscode-remote.remote-ssh-edit"
    "monokai.theme-monokai-pro-vscode"
)

for i in "${extensions[@]}"
do
	code --install-extension "$i"
done

code --list-extensions
