[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0iI2ZmZiIgZD0iTTE3IDE2VjdsLTYgNU0yIDlWOGwxLTFoMWw0IDMgOC04aDFsNCAyIDEgMXYxNGwtMSAxLTQgMmgtMWwtOC04LTQgM0gzbC0xLTF2LTFsMy0zIi8+PC9zdmc+)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/blairium/substrate-science) [![Open in GitHub Codespaces](https://img.shields.io/static/v1?label=GitHub%20Codespaces&message=Open&color=blue&logo=github)](https://github.com/codespaces/new/blairium/substrate-science) [![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-black.json)](https://github.com/copier-org/copier)

# 🌱 Substrate Science

A [Copier template](https://github.com/copier-org/copier) for reproducible scientific data analysis projects in Python. Forked from [blairium/substrate-science](https://github.com/blairium/substrate-science).

## 🎁 Features

- 🔬 Analysis layout: `data/{raw,interim,processed}`, `notebooks/`, `src/`, `results/`, an [Obsidian](https://obsidian.md) vault in `notes/`, and `literature/` for journal articles
- 🧮 [NumPy](https://numpy.org), [SciPy](https://scipy.org), [Matplotlib](https://matplotlib.org), [SciencePlots](https://github.com/garrettj403/SciencePlots), and [Polars](https://pola.rs) preinstalled
- 📓 Optional [Jupytext](https://jupytext.readthedocs.io) notebook pairing, plus [nbstripout](https://github.com/kynan/nbstripout)
- 🗄 Optional data versioning with [DVC](https://dvc.org)
- 🐍 Optional reproducible workflows with [Snakemake](https://snakemake.github.io)
- 📄 Optional paper and citation metadata (`CITATION.cff`, data dictionary)
- 🧑‍💻 One-click development environments with [Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers) and [GitHub Codespaces](https://github.com/features/codespaces), with VS Code format, lint, and import sorting on save
- 📦 Packaging and dependency management with [uv](https://github.com/astral-sh/uv)
- ⚡️ Task running with [Poe the Poet](https://github.com/nat-n/poethepoet)
- 💅 Formatting and linting with [ruff](https://github.com/astral-sh/ruff), type checking with [ty](https://github.com/astral-sh/ty), and git hooks with [prek](https://github.com/j178/prek)
- 🏷 Optional [Conventional Commits](https://www.conventionalcommits.org/), with changelogs from [git-cliff](https://git-cliff.org) and version bumps from [Commitizen](https://github.com/commitizen-tools)
- ♻️ Continuous integration with [GitHub Actions](https://docs.github.com/en/actions) or [GitLab CI/CD](https://docs.gitlab.com/ee/ci/)
- 🧪 Test coverage with [Coverage.py](https://github.com/nedbat/coveragepy)
- 📚 Documentation with [MkDocs](https://github.com/mkdocs/mkdocs)

## ✨ Using

> [!TIP]
> You should first [install uv](https://docs.astral.sh/uv/getting-started/installation/) to be able to run the commands below.

### Create a new analysis project

To create a new analysis project with this template, run:

```sh
uvx copier copy gh:blairium/substrate-science path/to/local/repository
```

### Update your Python project

To update your Python project to the latest template version, run:

```sh
uvx copier update --exclude src/ --exclude tests/
```

### Release a new version of your Python project

If you have enabled [Conventional Commits](https://www.conventionalcommits.org/), you can create a new version tag and update `CHANGELOG.md` based on your commit messages with:

```sh
git checkout main
cz bump
git push origin main --tags
```

### Build and publish your Python project's docs

To build and serve your Python project's docs, run:

```sh
poe docs --serve
```

If your project is on GitHub, your docs will be published automatically to GitHub Pages every time you update the default branch. You can view the docs by clicking on the ![Documentation](https://img.shields.io/static/v1?label=Documentation&message=View&color=blue&logo=readme&logoColor=white) badge in your project's README.

> [!TIP]
> Make sure to [configure the source of your project's GitHub Pages as GitHub Actions in your project settings](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#publishing-with-a-custom-github-actions-workflow) to allow the GitHub Actions workflow to publish your docs.

## Contributing

<details>
<summary>Prerequisites</summary>

1. [Generate an SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key) and [add the SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).
2. Configure SSH to automatically load your SSH keys:

    ```sh
    cat << EOF >> ~/.ssh/config
    
    Host *
      AddKeysToAgent yes
      IgnoreUnknown UseKeychain
      UseKeychain yes
      ForwardAgent yes
    EOF
    ```

3. [Install Docker Desktop](https://www.docker.com/get-started).
4. [Install VS Code](https://code.visualstudio.com/) and [VS Code's Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers). Alternatively, install [PyCharm](https://www.jetbrains.com/pycharm/download/).
5. _Optional:_ install a [Nerd Font](https://www.nerdfonts.com/font-downloads) such as [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode) and [configure VS Code](https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions) or [PyCharm](https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions) to use it.

</details>

<details open>
<summary>Development environments</summary>

The following development environments are supported:

1. ⭐️ _GitHub Codespaces_: click on [Open in GitHub Codespaces](https://github.com/codespaces/new/blairium/substrate-science) to start developing in your browser.
2. ⭐️ _VS Code Dev Container (with container volume)_: click on [Open in Dev Containers](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/blairium/substrate-science) to clone this repository in a container volume and create a Dev Container with VS Code.
3. ⭐️ _uv_: clone this repository and run the following from root of the repository:

    ```sh
    # Create and install a virtual environment
    uv sync

    # Activate the virtual environment
    source .venv/bin/activate

    # Install the pre-commit hooks
    prek install --install-hooks
    ```

4. _VS Code Dev Container_: clone this repository, open it with VS Code, and run <kbd>Ctrl/⌘</kbd> + <kbd>⇧</kbd> + <kbd>P</kbd> → _Dev Containers: Reopen in Container_.
5. _PyCharm Dev Container_: clone this repository, open it with PyCharm, [create a Dev Container with Mount Sources](https://www.jetbrains.com/help/pycharm/start-dev-container-inside-ide.html), and [configure an existing Python interpreter](https://www.jetbrains.com/help/pycharm/configuring-python-interpreter.html#widget) at `/opt/venv/bin/python`.

</details>

<details open>
<summary>Developing</summary>

- This project follows the [Conventional Commits](https://www.conventionalcommits.org/) standard to automate [Semantic Versioning](https://semver.org/) and [Keep A Changelog](https://keepachangelog.com/) with [Commitizen](https://github.com/commitizen-tools/commitizen).
- Run `cz bump` to bump the template's version, update the `CHANGELOG.md`, and create a git tag. Then push the changes and the git tag with `git push origin main --tags`.

</details>
