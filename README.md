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
docker login docker.zhr.one:443
```

You can build and push using:

```shell
docker buildx build \
    --platform linux/arm64,linux/amd64 \
    -t <TAG>:testing \
    --push \
    -f <DOCKERFILE> .
```

Or push a previously built tag using:

```shell
docker tag <TAG>:testing docker.zhr.one:443/<TAG>:testing
docker push docker.zhr.one:443/<TAG>:testing
```

> **NOTE**: Use the `testing` label for any unofficial builds.
