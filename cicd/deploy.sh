#!/bin/sh
set -e
cd "$(dirname "$0")/.."/terraform
tofu init
tofu plan
tofu apply -auto-approve