# KASM Custom Images

Custom images for KASM which are personalized for zhr.one use.

Images are based on the [core images](https://github.com/kasmtech/workspaces-core-images) and Dockerfile setups on the [images](https://github.com/kasmtech/workspaces-images).

## Images

The following images are available:

| Image name | Dockerfile | Makefile targets |
| ---------- | ---------- | ---------------- |
| `desktop-ubuntu` | `Dockerfile.desktop` | `desktop` |
| `vscode` | `Dockerfile.vscode` | `vscode` |
| `terminal` | `Dockerfile.terminal` | `terminal` |

## Tags

The above images are published with the following tags:

| Tag | Description |
| --- | ----------- |
| `main` | Automatically updated every Sunday at 1AM with the latest updates. |
| `testing` | Locally-created tags used for testing images. |
| `pr-*` | Automatically created for PR builds, not pushed to artifact repository. |

## Building an image locally

You can build an image using Docker with [Buildx](https://github.com/docker/buildx).

```shell
make <TARGET>
```

You can also build only the arm64 image for a faster build time on M1 Macs using:

```shell
make <TARGET>-arm64
```

## Building and pushing to registry

Authenticate to the private registry using:

```shell
docker login images.kasm.polaris.gdn
```

You can build and push using:

```shell
make <TARGET>-push
```

Or push a previously built tag using:

```shell
docker tag <TAG>:testing images.kasm.polaris.gdn/<TAG>:testing
docker push images.kasm.polaris.gdn/<TAG>:testing
```

> **NOTE**: Use the `testing` label for any unofficial builds.
