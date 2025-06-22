# Contributing to Omar El Mountassir's GitHub Profile

Thank you for your interest in contributing to this GitHub profile repository! 🎉

## 📋 Table of Contents

- [Contributing to Omar El Mountassir's GitHub Profile](#contributing-to-omar-el-mountassirs-github-profile)
  - [📋 Table of Contents](#-table-of-contents)
  - [📜 Code of Conduct](#-code-of-conduct)
  - [🤝 How Can I Contribute?](#-how-can-i-contribute)
    - [Reporting Issues](#reporting-issues)
    - [Suggesting Features](#suggesting-features)
    - [Documentation Improvements](#documentation-improvements)
  - [🔄 Pull Request Process](#-pull-request-process)
    - [Pull Request Guidelines](#pull-request-guidelines)
  - [🎨 Style Guidelines](#-style-guidelines)
    - [Markdown](#markdown)
    - [Commit Messages](#commit-messages)
    - [Branch Naming](#branch-naming)
  - [🛠️ Development Setup](#️-development-setup)
  - [🚀 Quick Start for Contributors](#-quick-start-for-contributors)
  - [📞 Getting Help](#-getting-help)
  - [🙏 Recognition](#-recognition)

## 📜 Code of Conduct

This project adheres to a [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## 🤝 How Can I Contribute?

### Reporting Issues

- **Use the issue templates** provided in `.github/ISSUE_TEMPLATE/`
- **Search existing issues** before creating a new one
- **Provide detailed information** about the problem
- **Include screenshots** if applicable

### Suggesting Features

- **Use the feature request template**
- **Explain the use case** clearly
- **Consider the scope** of the feature
- **Be open to discussion**

### Documentation Improvements

- Fix typos or unclear explanations
- Add missing documentation
- Improve code examples
- Update outdated information

## 🔄 Pull Request Process

1. **Fork** the repository
2. **Create a feature branch** (`git checkout -b feature/amazing-feature`)
3. **Make your changes** following the style guidelines
4. **Test your changes** thoroughly
5. **Commit** with descriptive messages (`git commit -m 'Add amazing feature'`)
6. **Push** to your branch (`git push origin feature/amazing-feature`)
7. **Open a Pull Request** using the template

### Pull Request Guidelines

- **Use the PR template** provided
- **Link related issues** using keywords (fixes #123)
- **Describe your changes** clearly
- **Keep PRs focused** - one feature/fix per PR
- **Update documentation** if needed
- **Add tests** for new functionality

## 🎨 Style Guidelines

### Markdown

- Use **consistent formatting**
- Follow **markdownlint** rules (configured in `.markdownlint.json`)
- Use **semantic line breaks**
- Include **alt text** for images

### Commit Messages

Follow the [Conventional Commits](https://conventionalcommits.org/) specification:

```
type(scope): description

[optional body]

[optional footer]
```

Types:

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes
- `refactor`: Code refactoring
- `test`: Adding tests
- `chore`: Maintenance tasks

Examples:

```
feat(readme): add dynamic GitHub stats
fix(workflow): correct blog post automation
docs(contributing): add style guidelines
```

### Branch Naming

- `feature/feature-name` - New features
- `fix/bug-description` - Bug fixes
- `docs/documentation-update` - Documentation
- `refactor/code-improvement` - Refactoring

## 🛠️ Development Setup

1. **Clone the repository**:

   ```bash
   git clone https://github.com/omar-el-mountassir/omar-el-mountassir.git
   cd omar-el-mountassir
   ```

2. **Install dependencies** (if any):

   ```bash
   # For markdown linting
   npm install -g markdownlint-cli
   ```

3. **Set up pre-commit hooks** (optional):

   ```bash
   # Install pre-commit
   pip install pre-commit
   pre-commit install
   ```

4. **Run tests**:

   ```bash
   # Lint markdown files
   markdownlint *.md

   # Check links
   markdown-link-check README.md
   ```

## 🚀 Quick Start for Contributors

1. **Look for "good first issue" labels** on GitHub
2. **Comment on the issue** to get assigned
3. **Follow the development setup** above
4. **Make your changes** in a new branch
5. **Submit a pull request** with the template

## 📞 Getting Help

- **GitHub Issues**: For bugs and feature requests
- **Discussions**: For questions and general discussion
- **Email**: For private inquiries

## 🙏 Recognition

Contributors are recognized in:

- GitHub contributor graph
- CHANGELOG.md mentions
- Special thanks in releases

Thank you for contributing! 🚀
