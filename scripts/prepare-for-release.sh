#!/bin/bash

trap "exit" INT TERM ERR
trap "kill 0" EXIT

set -o errexit
set -o pipefail

if [[ "undefined$1" = "undefined" ]]
then
echo "Usage: $0 AURYC_VERSION"
exit 1
fi

AURYC_VERSION=$1

TMP_DIR=$(mktemp -d -t auryc-ios-sdk)
ZIP_FILE="AurycSDK.xcframework_${AURYC_VERSION}.zip"
ZIP_URL="https://storage.googleapis.com/auryc-sdk-ios/${ZIP_FILE}"
ZIP_PATH="${TMP_DIR}/${ZIP_FILE}"




curl -o "$ZIP_PATH" "https://storage.googleapis.com/auryc-sdk-ios/${ZIP_FILE}"

echo "$TMP_DIR"

CHECKSUM=$(swift package compute-checksum "${ZIP_PATH}")

unzip -o "$ZIP_PATH" CHANGELOG.md README.md -d "../" # Here's where we fail if it's a bad version number.

echo 'Updating Package.swift'
sed -i '' "s#\"https://storage.googleapis.com/auryc-sdk-ios/AurycSDK.xcframework_[^\"]*\"#\"${ZIP_URL}\"#; s#\(checksum: \"\)[^\"]*#\1${CHECKSUM}#" ../Package.swift

echo "Done!"
