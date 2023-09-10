#!/bin/bash

set -e

source dev-container-features-test-lib

check "bun version is 0.8.1" bun --version | grep '0.8.1'

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
