#!/bin/bash
set -e
FRAMEWORK_NAME="MyAwesomeKit"
OUTPUT_DIR="output"
ARCHIVES_DIR="archives"

rm -rf "${ARCHIVES_DIR}" "${OUTPUT_DIR}"
mkdir -p "${ARCHIVES_DIR}" "${OUTPUT_DIR}"

echo "🏗 Building ${FRAMEWORK_NAME} for iOS Simulator..."
xcodebuild archive \
-scheme ${FRAMEWORK_NAME} \
-archivePath ${ARCHIVES_DIR}/simulator.xcarchive \
-sdk iphonesimulator \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
CODE_SIGN_IDENTITY="" \
CODE_SIGNING_REQUIRED=NO \ 
CODE_SIGNING_ALLOWED=NO

echo "🏗 Building ${FRAMEWORK_NAME} for iOS Devices..."
xcodebuild archive \
-scheme ${FRAMEWORK_NAME} \
-archivePath ${ARCHIVES_DIR}/ios.xcarchive \
-sdk iphoneos \
SKIP_INSTALL=NO \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
CODE_SIGN_IDENTITY="" \
CODE_SIGNING_REQUIRED=NO \ 
CODE_SIGNING_ALLOWED=NO

echo "🔨 Creating XCFramework..."
xcodebuild -create-xcframework \
-framework ${ARCHIVES_DIR}/simulator.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework \
-framework ${ARCHIVES_DIR}/ios.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework \
-output ${OUTPUT_DIR}/${FRAMEWORK_NAME}.xcframework

echo "✅ XCFramework created successfully at ${OUTPUT_DIR}/${FRAMEWORK_NAME}.xcframework"