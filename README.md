# KASM Custom Images

Custom images for KASM which are personalized for zhr.one use. 

Images are based on the [core images](https://github.com/kasmtech/workspaces-core-images) and Dockerfile setups on the [images](https://github.com/kasmtech/workspaces-images).

## Images

The following images are available:

| Image name | Dockerfile |
| ---------- | ---------- |
| `personal-desktop` | `Dockerfile.desktop` |
| `vscode` | `Dockerfile.vscode` |
| `terminal` | `Dockerfile.terminal` |

## Tags

The above images are published with the following tags:

| Tag | Description |
| --- | ----------- |
| `main` | Automatically updated every Sunday at 1AM with the latest updates. |
| `testing` | Locally-created tags used for testing images. |
| `pr-*` | Automatically created for PR builds, not pushed to artifact repository. |

## Building an image

You can build an image using Docker with [Buildx](https://github.com/docker/buildx).

```shell
docker buildx build \
    --platform linux/arm64,linux/amd64 \
    -t <TAG>:testing \
    -f <DOCKERFILE> .
```

## Pushing to Private Registry

Authenticate to the private registry using:

```shell
docker login docker.zhr.one
```

You can build and push using:

```shell
docker buildx build \
    --platform linux/arm64,linux/amd64 \
    -t docker.zhr.one/<TAG>:testing \
    --push \
    -f <DOCKERFILE> .
```

Or push a previously built tag using:

```shell
docker tag <TAG>:testing docker.zhr.one/<TAG>:testing
docker push docker.zhr.one/<TAG>:testing
```

> **NOTE**: Use the `testing` label for any unofficial builds.
