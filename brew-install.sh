#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Installing public casks..."
brew bundle --file=Brewfile

echo "Decrypting private Brewfile..."
age -d -i ~/.ssh/id_ed25519 Brewfile.private.age > Brewfile.private

echo "Installing private casks..."
brew bundle --file=Brewfile.private

rm Brewfile.private
echo "Done!"
