#!/bin/bash

set -exu

# where this .sh file lives
DIRNAME=$(dirname "$0")
SCRIPT_DIR=$(cd "$DIRNAME" || exit 1; pwd)
cd "$SCRIPT_DIR" || exit 1

yq eval '.entries.plastikube = [.entries.plastikube[0]]' index.yaml -i
yq eval '.entries.gameserver-csgo = [.entries.gameserver-csgo[0]]' index.yaml -i
yq eval '.entries.operator = [.entries.pk-operator[0]]' index.yaml -i
yq eval '.entries.crds = [.entries.pk-crds[0]]' index.yaml -i
