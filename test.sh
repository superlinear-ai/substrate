#!/bin/bash

set -e

rm -rf my-project

for extras in false true; do
    for typing in optional strict; do
        # Scaffold an analysis project
        uvx copier copy --vcs-ref=HEAD . my-project             --defaults             --data project_name="My Project"             --data project_description="An analysis of simulated data."             --data project_url="https://github.com/user/repo"             --data author_name="Jane Smith"             --data author_email="jane@example.com"             --data python_version="3.12"             --data typing="$typing"             --data with_jupytext="$extras"             --data with_dvc="$extras"             --data with_snakemake="$extras"             --data with_citation="$extras"

        cd my-project
        git config --global init.defaultBranch main
        git init
        git checkout -b test
        git add .

        # Lint and test the project with a dev container
        devcontainer up --remove-existing-container --workspace-folder .
        devcontainer exec --workspace-folder . uv lock
        devcontainer exec --workspace-folder . poe lint
        devcontainer exec --workspace-folder . poe test

        # Run the Snakemake workflow if it was enabled
        if [ "$extras" == "true" ]; then
            devcontainer exec --workspace-folder . poe workflow
        fi

        cd -
        rm -rf my-project
    done
done
