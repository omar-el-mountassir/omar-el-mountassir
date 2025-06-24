# 🔑 GitHub Personal Access Token Setup Guide

This guide will walk you through setting up a GitHub Personal Access Token (PAT) required for the automated stats generation workflow.

## 🎯 Why Do We Need This?

The GitHub Actions workflow `metrics.yml` uses the `lowlighter/metrics` action to generate beautiful GitHub statistics. This requires access to your GitHub profile and repository data, which needs authentication via a Personal Access Token.

## 📋 Step-by-Step Setup Process

### 1. 🚀 Create a Personal Access Token

#### 1. **Navigate to GitHub Settings:**

- Go to [GitHub.com](https://github.com)
- Click your profile picture (top-right corner)
- Select **"Settings"**

#### 2. **Access Developer Settings:**

- Scroll down to **"Developer settings"** (bottom of left sidebar)
- Click **"Personal access tokens"**
- Select **"Tokens (classic)"**

#### 3. **Generate New Token:**

- Click **"Generate new token"** button
- Select **"Generate new token (classic)"**

#### 4. **Configure Token Settings:**

```text
   - **Note:** Give your token a descriptive name (e.g., "GitHub Profile Stats Token")
   - **Expiration:** Set a reasonable expiration date (recommended: 1 year maximum)
   - **Scopes:** Select the following:
     - ✅ `repo` (Full control of private repositories)
```

#### 5. **Generate and Copy Token:**

- Click **"Generate token"**
- **⚠️ CRITICAL:** Copy the token immediately (you won't see it again!)
- Store it temporarily in a secure location

### 2. 🔒 Add Token as Repository Secret

1. **Navigate to Repository Settings:**

   - Go to your profile repository: `https://github.com/<github-user-or-org-name>/<github-user-or-org-name>`
      - **Example:** `https://github.com/omar-el-mountassir/omar-el-mountassir`
   - Click the **"Settings"** tab

2. **Access Secrets:**

   - In the left sidebar, click **"Secrets and variables"**
   - Select **"Actions"**

3. **Create New Secret:**
   - Click **"New repository secret"**
   - **Name:** `METRICS_TOKEN`
   - **Secret:** Paste your copied token
   - Click **"Add secret"**

### 3. ✅ Verify Setup

1. **Check Workflow Status:**

   - Go to the **"Actions"** tab in your repository
   - Look for the **"Update GitHub Stats"** workflow
   - If it shows green ✅, everything is working!

2. **Manual Trigger (Optional):**
   - Click on **"Update GitHub Stats"** workflow
   - Click **"Run workflow"** → **"Run workflow"**
   - Wait for completion and check for errors

## 🔒 Security Best Practices

### ✅ DO

- Store tokens ONLY in GitHub Secrets
- Use minimal required permissions (`repo` scope only)
- Set reasonable expiration dates (max 1 year)
- Rotate tokens regularly
- Keep this guide private/secure

### ❌ DON'T

- Share tokens in chat, email, or documents
- Commit tokens to repository files
- Store tokens in environment variables
- Use tokens with excessive permissions
- Keep tokens without expiration

## 🛠️ Troubleshooting

### Common Issues

1. **"Error: Bad credentials"**

   - Token may be expired or incorrect
   - Regenerate token and update secret

2. **"Error: Resource not accessible by integration"**

   - Token lacks required permissions
   - Ensure `repo` scope is selected

3. **Workflow not running**
   - Check if secrets are properly configured
   - Verify workflow syntax in `.github/workflows/metrics.yml`

### 🔍 Debugging Steps

1. Check workflow logs in Actions tab
2. Verify secret name is exactly `METRICS_TOKEN`
3. Ensure token has `repo` permissions
4. Try manual workflow trigger

## 📞 Support

If you encounter issues:

- 📧 **Email:** [omar.mountassir@gmail.com](mailto:omar.mountassir@gmail.com)
- 🐛 **Issues:** [GitHub Issues](https://github.com/omar-el-mountassir/omar-el-mountassir/issues)
- 📍 **Location:** Marrakech, Morocco (GMT+1)

## ⏰ Token Renewal

**Important:** Tokens expire! Set a calendar reminder to:

1. Generate new token before expiration
2. Update repository secret with new token
3. Verify workflows continue working

---

**Remember:** Keep your tokens secure and follow the principle of least privilege! 🔒
