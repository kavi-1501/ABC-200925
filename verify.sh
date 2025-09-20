#!/bin/bash

# List of applications to verify
apps=("terraform" "git" "ansible" "python3")

echo "Verifying installed applications..."

for app in "${apps[@]}"; do
    if command -v $app >/dev/null 2>&1; then
        version=$($app --version 2>&1 | head -n 1)
        echo "[OK] $app is installed: $version"
    else
        echo "[FAIL] $app is NOT installed"
    fi
done

