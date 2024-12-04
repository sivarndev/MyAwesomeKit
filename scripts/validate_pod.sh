#!/bin/bash

# validate_pod.sh
set -e

FRAMEWORK_NAME=$1
SHOULD_PUSH=${2:-false}
TRUNK_TOKEN=$3

echo "🔍 Validating podspec..."
pod spec lint ${FRAMEWORK_NAME}.podspec --allow-warnings

if [ "$SHOULD_PUSH" = true ] && [ -n "$TRUNK_TOKEN" ]; then
    echo "📦 Pushing pod to trunk..."
    pod trunk push ${FRAMEWORK_NAME}.podspec --allow-warnings
fi

echo "✅ Pod validation completed successfully"