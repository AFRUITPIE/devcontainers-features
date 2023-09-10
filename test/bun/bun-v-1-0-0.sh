#!/bin/bash

set -e

source dev-container-features-test-lib

check "bun version is 1.0.0" bun --version | grep '1.0.0'

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
