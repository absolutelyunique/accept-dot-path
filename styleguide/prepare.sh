#!/usr/bin/env bash

npx rollup-umd-scripts doc variable \
  PACKAGE_NAME=$(node -p "require('./package.json').name") \
  PACKAGE_PEERS="$(npx rollup-umd-scripts peer npm-install-cmd)" \
  PACKAGE_VERSION=$(node -p "require('./package.json').version") \
  NODE_VERSION=${NODE_VERSION} \
  NPM_VERSION=${NPM_VERSION} \
  CI_REPOSITORY_URL="https://github.com/${TRAVIS_REPO_SLUG}.git" \
  CI_PROJECT_URL="https://github.com/${TRAVIS_REPO_SLUG}" \
  CI_PROJECT_NAMESPACE=$(echo $TRAVIS_REPO_SLUG | awk -F / '{print $1}') \
  CI_PROJECT_NAME=$(echo $TRAVIS_REPO_SLUG | awk -F / '{print $2}') \
  IMG_SHIELD_PUBLISHING=$(npx rollup-umd-scripts publish status --badge)

npx rollup-umd-scripts doc add-section -n 'Code of conduct' -a 'FAQ' -c 'CODE_OF_CONDUCT.md' -f
npx rollup-umd-scripts doc add-section -n 'Changelog' -a 'Code of conduct' -c 'CHANGELOG.md' -f
