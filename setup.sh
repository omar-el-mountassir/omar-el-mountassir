#!/bin/bash

# Omar El Mountassir - GitHub Profile Repository Setup Script
# This script automates the setup of your GitHub profile repository

echo "🚀 Setting up Omar El Mountassir's GitHub Profile Repository..."
echo "📍 Location: Marrakech, Morocco"
echo "🕐 Timezone: Africa/Casablanca"
echo ""

# Check if we're in the right directory
if [[ ! -f "README.md" ]] || [[ ! -d ".github" ]]; then
    echo "❌ Error: This doesn't appear to be the profile repository directory"
    echo "Please run this script from the omar-el-mountassir repository root"
    exit 1
fi

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git is not installed"
    echo "Please install Git first: https://git-scm.com/downloads"
    exit 1
fi

# Check if git is configured
echo "🔧 Checking Git configuration..."
if ! git config user.name > /dev/null; then
    echo "⚙️  Configuring Git user settings..."
    git config --global user.name "Omar El Mountassir"
    git config --global user.email "omar.mountassir@gmail.com"
    echo "✅ Git configuration complete!"
else
    echo "✅ Git is already configured for $(git config user.name)"
fi

# Check git remote
echo "🔗 Checking Git remote configuration..."
if git remote get-url origin &> /dev/null; then
    echo "✅ Git remote is configured: $(git remote get-url origin)"
else
    echo "🔗 Adding GitHub remote..."
    git remote add origin https://github.com/omar-el-mountassir/omar-el-mountassir.git
    echo "✅ Remote added successfully!"
fi

# Check current branch
current_branch=$(git branch --show-current)
if [[ "$current_branch" != "main" ]]; then
    echo "🔄 Switching to main branch..."
    git checkout -b main 2>/dev/null || git checkout main
fi

# Check if there are any changes to commit
if [[ -n $(git status --porcelain) ]]; then
    echo "📝 Committing changes..."
    git add .
    git commit -m "Complete profile repository setup - $(date +'%Y-%m-%d %H:%M')"
    echo "✅ Changes committed!"
else
    echo "✅ Working directory is clean"
fi

# Push to GitHub
echo "📤 Pushing to GitHub..."
if git push -u origin main; then
    echo "✅ Successfully pushed to GitHub!"
else
    echo "⚠️  Warning: Push failed. You may need to authenticate with GitHub"
    echo "   Try: gh auth login (if you have GitHub CLI)"
    echo "   Or set up SSH keys: https://docs.github.com/en/authentication/connecting-to-github-with-ssh"
fi

echo ""
echo "🎉 Setup complete! Your GitHub profile repository is ready!"
echo ""
echo "� Next steps:"
echo "   1. 🔑 Set up GitHub Personal Access Token:"
echo "      → Read: GITHUB_TOKEN_SETUP.md"
echo "      → Create token with 'repo' scope"
echo "      → Add as repository secret 'METRICS_TOKEN'"
echo ""
echo "   2. 🎨 Customize your profile:"
echo "      → Edit README.md for your personal content"
echo "      → Update AUTHORS.md with your background"
echo "      → Modify CONTACT.md with your social links"
echo "      → Add projects to TECHNOLOGIES.md"
echo ""
echo "   3. 🔗 Important links:"
echo "      → Profile: https://github.com/omar-el-mountassir"
echo "      → Repository: https://github.com/omar-el-mountassir/omar-el-mountassir"
echo "      → Actions: https://github.com/omar-el-mountassir/omar-el-mountassir/actions"
echo ""
echo "   4. 🛠️  VS Code tasks available:"
echo "      → Ctrl+Shift+P → 'Tasks: Run Task'"
echo "      → Quick Commit & Push"
echo "      → Trigger GitHub Stats Update"
echo "      → Open GitHub Repository"
echo ""
echo "🔒 Security reminder: Never commit your GitHub tokens to the repository!"
echo "✨ Your profile will be visible at: https://github.com/omar-el-mountassir"
echo ""
echo "Happy coding! 🚀"
