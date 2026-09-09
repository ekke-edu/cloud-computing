#  GitHub Actions and CI/CD

**GitHub Actions** is an automation system for software development workflows. In this course, we automate the build and publication of documentation so the project is always available in its latest published form.

## 🚀 What is CI/CD?

- **Continuous Integration (CI):** Automatically validating code changes as they are introduced
- **Continuous Deployment (CD):** Automatically publishing and deploying after a successful build

## ⚙️ How it works

1. A workflow YAML file is defined in the `.github/workflows/` directory.
2. The pipeline installs the required tools such as Python and `mkdocs-material`.
3. It runs `mkdocs build` and then updates the `gh-pages` branch with the generated documentation.

## 📘 Tools used

- **GitHub Actions** for task automation
- **MkDocs** for documentation generation
- **MkDocs Material** for a modern responsive documentation theme
- **GitHub Pages** for publishing

## ✅ Benefits

- faster and more reliable release workflows
- automated documentation management
- reproducible build and deployment processes