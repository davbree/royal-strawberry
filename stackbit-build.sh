#!/usr/bin/env bash

set -e
set -o pipefail
set -v

npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://57e4e8ff.ngrok.io/pull/5d388ff10f1df175ae0901ad
./ssg-build.sh
./inject-netlify-cms.js public
