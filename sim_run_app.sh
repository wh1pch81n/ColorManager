#!/bin/bash

BUILD_PATH="./build/Release-iphonesimulator"
TARGET_NAME="ColorManager"
BUNDLE_IDENTIFIER="dnthome.ColorManager"
SIMULATOR_MODEL="iPhone 5 (10.2)"

xcodebuild -project $TARGET_NAME.xcodeproj -sdk iphonesimulator
xcrun instruments -w "$SIMULATOR_MODEL"
xcrun simctl install booted $BUILD_PATH/$TARGET_NAME.app
xcrun simctl launch booted $BUNDLE_IDENTIFIER 
