#!/bin/bash

# GitHub Profile Repository Setup Script
# Run this script to quickly set up your profile repository

echo "🚀 Setting up your GitHub Profile Repository..."

# Check if git is configured
if ! git config user.name > /dev/null; then
    echo "⚙️  Configuring Git user settings..."
    read -p "Enter your name: " git_name
    read -p "Enter your email: " git_email
    git config --global user.name "$git_name"
    git config --global user.email "$git_email"
    echo "✅ Git configuration complete!"
fi

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin main

echo "🎉 Setup complete! Your GitHub profile repository is now live!"
echo "📝 Next steps:"
echo "   1. Visit https://github.com/omar-el-mountassir/omar-el-mountassir"
echo "   2. Edit the README.md to personalize your profile"
echo "   3. Update social media links and contact information"
echo "   4. Add your actual projects and experiences"
echo "   5. Set up blog feeds in .github/workflows/blog-post-workflow.yml"
