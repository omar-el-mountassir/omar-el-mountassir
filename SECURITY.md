# Security Policy

## 🔒 GitHub Profile Repository Security

This repository contains a GitHub profile README and automated workflows. While it's primarily for display purposes, we take security seriously, especially regarding GitHub tokens and automated workflows.

## Supported Versions

| Version | Supported          | Description |
| ------- | ------------------ | ----------- |
| 1.x.x   | ✅ | Current stable version with security updates |
| < 1.0   | ❌ | Legacy versions - no longer supported |

## 🚨 Critical Security Requirements

### GitHub Personal Access Token (PAT) Security

**⚠️ EXTREMELY IMPORTANT:** This repository uses GitHub Actions that require a Personal Access Token (`METRICS_TOKEN`).

#### ✅ **SECURE TOKEN HANDLING:**

1. **Create PAT with Minimal Permissions:**
   - Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Select **ONLY** the `repo` scope (no additional permissions needed)
   - Set a reasonable expiration date (max 1 year for security)

2. **Store as Repository Secret:**
   - Repository Settings → Secrets and variables → Actions
   - Create secret named: `METRICS_TOKEN`
   - Paste your PAT as the value

3. **Token Security Best Practices:**
   - ✅ Store ONLY in GitHub Secrets
   - ✅ Use minimal required permissions (`repo` scope only)
   - ✅ Set expiration dates
   - ✅ Rotate tokens regularly
   - ❌ NEVER commit tokens to repository
   - ❌ NEVER share tokens in chat/email
   - ❌ NEVER store in files or environment variables

#### 🔍 **Token Permissions Required:**
- `repo` - **Required** for accessing repository statistics and information

## 📋 Reporting a Vulnerability

We take all security vulnerabilities seriously. Thank you for helping us keep this project safe.

### How to Report

1. **Preferred:** Use the **"Report a vulnerability"** button on the [Security tab](https://github.com/omar-el-mountassir/omar-el-mountassir/security)
2. **Alternative:** Email **omar.mountassir@gmail.com** with subject `SECURITY VULNERABILITY`

### What to Include

Please include the following information in your report:

- 📝 Clear description of the vulnerability
- 🔄 Steps to reproduce the vulnerability
- 📦 Version of the project affected
- 💥 Potential impact assessment
- 👤 Your contact information (optional for credit)

### Our Response Commitment

- ⏱️ **48 hours:** Initial acknowledgment
- 📊 **72 hours:** Vulnerability assessment and timeline
- 🔄 **Weekly:** Progress updates until resolution
- 🏆 **Credit:** Recognition for discovery (unless you prefer anonymity)

## 🛡️ Security Best Practices

### For Repository Maintainers

- 🔄 **Dependencies:** Keep all GitHub Actions and dependencies updated
- 🔐 **2FA:** Enable two-factor authentication on GitHub account
- 🔑 **Token Rotation:** Rotate PATs every 6-12 months
- 📊 **Monitoring:** Regularly review workflow runs and logs
- 🚫 **Principle of Least Privilege:** Use minimal required permissions

### For Contributors

- ✅ **Never commit secrets:** Use `.gitignore` for sensitive files
- 🔍 **Code Review:** All workflow changes require review
- 📝 **Documentation:** Update security docs with any changes
- 🔒 **Secure Development:** Follow secure coding practices

## 🚨 Incident Response

If a security breach is detected:

1. **Immediate:** Revoke compromised tokens
2. **Assessment:** Evaluate scope and impact
3. **Containment:** Implement immediate fixes
4. **Communication:** Notify affected users
5. **Recovery:** Restore secure operations
6. **Lessons Learned:** Update security measures

## 📞 Contact Information

- **Security Issues:** omar.mountassir@gmail.com
- **General Questions:** [GitHub Issues](https://github.com/omar-el-mountassir/omar-el-mountassir/issues)
- **Location:** Marrakech, Morocco (GMT+1)

---

**Remember:** Security is everyone's responsibility. When in doubt, ask! 🛡️

Thank you for helping keep this project secure! �
