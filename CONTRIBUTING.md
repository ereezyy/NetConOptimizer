# Contributing to NetConOptimizer: Enhance Network Performance

We welcome contributions from developers and network enthusiasts to improve NetConOptimizer. Your contributions help make this tool more robust, efficient, and user-friendly for everyone.

## 🤝 Code of Conduct

To ensure a welcoming and open environment, we adhere to a [Code of Conduct](CODE_OF_CONDUCT.md). Please read it before participating in the project.

## 🛠️ How Can I Contribute?

There are several ways you can contribute to NetConOptimizer:

### 1. Reporting Bugs

*   **Check existing issues**: Before opening a new issue, please check if the bug has already been reported.
*   **Open a new issue**: If not, open a new issue with a clear and descriptive title. Include detailed steps to reproduce the bug, your environment details, and expected vs. actual behavior.

### 2. Suggesting Enhancements

*   Have an idea for a new feature, optimization, or improvement? Open an issue with the label `enhancement`.
*   Describe your idea clearly and explain why it would be beneficial to NetConOptimizer.

### 3. Pull Requests

We encourage you to open pull requests (PRs) for any changes you wish to contribute. To ensure a smooth review process, please follow these guidelines:

## ✅ Development Setup

To set up your local development environment, please refer to the [Installation & Usage](#installation--usage) section in the `README.md` file.

## 🌳 Branching Strategy

We use a `main` branch for stable releases and feature branches for ongoing development. All contributions should be made via feature branches.

*   `main`: The stable branch, always reflecting the latest release.
*   `feature/<feature-name>`: For new features or significant improvements.
*   `bugfix/<bug-description>`: For bug fixes.
*   `docs/<doc-update>`: For documentation improvements.

## 📥 Pull Request Guidelines

1.  **Fork the Repository**: Start by forking the `ereezyy/NetConOptimizer` repository to your own GitHub account.
2.  **Create a Feature Branch**: Create a new branch from `main` for your changes. Use a descriptive name (e.g., `feature/add-new-optimization`, `bugfix/fix-dns-flush`).

    ```bash
    git checkout main
    git pull origin main
    git checkout -b feature/your-feature-name
    ```

3.  **Implement Your Changes**: Make your code changes, add new features, or fix bugs.
4.  **Write Tests**: If you have added code that should be tested, please add appropriate unit or integration tests (e.g., Pester tests for PowerShell).
5.  **Update Documentation**: If your changes affect any functionality or usage, update the relevant documentation (e.g., `README.md`).
6.  **Ensure Code Quality**: Ensure your PowerShell script adheres to best practices and is well-commented.
7.  **Commit Your Changes**: Write clear, concise, and descriptive commit messages. We follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification.

    Example:
    ```bash
    git commit -m "feat: Add option to reset network adapters"
    ```

8.  **Push to Your Fork**: Push your new branch to your forked repository on GitHub:

    ```bash
    git push origin feature/your-feature-name
    ```

9.  **Create a Pull Request**: Finally, open a pull request from your forked repository to the `main` branch of the original `ereezyy/NetConOptimizer` repository. Provide a detailed description of your changes and why they are necessary.

## 🔐 Security

If you discover a security vulnerability, please refer to our `SECURITY.md` for responsible disclosure guidelines. Do not open public issues for security vulnerabilities.

Let's optimize network connections together! 🚀
