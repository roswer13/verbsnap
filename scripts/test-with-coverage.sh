#!/bin/bash

## Generate coverage report
PROJECT_ROOT_PATH=$1
PACKAGE_PATH=$2
PACKAGE_NAME=$3

PACKAGE_LCOV_INFO_PATH=$PROJECT_ROOT_PATH/coverage/lcov_$PACKAGE_NAME.info
PACKAGE_TEST_REPORT_PATH=$PROJECT_ROOT_PATH/test_reports/${PACKAGE_NAME}_test_report.json

echo "Project root path: $PROJECT_ROOT_PATH"
echo "Package path: $PACKAGE_PATH"
echo "Running tests for package: $PACKAGE_NAME"
echo "LCOV info path: $PACKAGE_LCOV_INFO_PATH"
echo "Test report path: $PACKAGE_TEST_REPORT_PATH"

mkdir -p $PROJECT_ROOT_PATH/coverage/
flutter test \
  --no-pub \
  --machine \
  --coverage \
  --coverage-path $PACKAGE_LCOV_INFO_PATH > $PACKAGE_TEST_REPORT_PATH

echo "Test report generated at: $PACKAGE_TEST_REPORT_PATH"
escapedPath="$(echo $PACKAGE_PATH | sed 's/\//\\\//g')"

# Requires gsed on MacOS machines because otherwise sed is not the same...
if [[ "$OSTYPE" =~ ^darwin ]]; then
  gsed -i "s/^SF:lib/SF:$escapedPath\/lib/g" $PACKAGE_LCOV_INFO_PATH
else
  sed -i "s/^SF:lib/SF:$escapedPath\/lib/g" $PACKAGE_LCOV_INFO_PATH
fi