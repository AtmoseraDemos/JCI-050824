# This script uses GH CLI and Git to wrork with local and remote repositories

# Authenticate with GitHub using the CLI. A token is stored in a file 'gh-token' in the same directory as this script
gh auth login --with-token < gh-token

# Intitialize a new Git repository in the current directory
git init
