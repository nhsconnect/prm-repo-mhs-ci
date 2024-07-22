# Overview

The `prm-repo-mhs` GoCD job:

1. Checks out `NHSDigital/integration-adaptor-mhs` (`main`) to `./integration-adaptor-mhs`.

2. Builds the checked out code, resulting in a Docker container with name `<GoCD-build-number>-<integration-adaptor-mhs_git-commit{1-8}>-<prm-repo-mhs-ci_git-commit{1-8}>`.

3. Publishes the container to the GoCD AWS ACR.
