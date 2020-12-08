[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/vfarcic/copilot-demo)

# [The DevOps Toolkit Series](http://www.devopstoolkitseries.com)

Following assumptions are made:

* Your Codefresh account is already configured with integration with Docker Hub registry named `docker-hub`.

When using through **Gitpod**, make sure that the following environment variables are created:

* *CF_TOKEN* with the Codefresh token (visit [Codefresh: Create Tokens](https://codefresh-io.github.io/cli/tokens/create-tokens/) if you do not have one)
* *GH_TOKEN* with the GitHub token (visit [GitHub: Creating a personal access token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token) if you do not have one)
* *DH_USER* with the Docker Hub user
* *PROD_REPO* with the Argo CD production repository and in the format [USER]/[REPO] (e.g., `vfarcic/gitpod-production`)
