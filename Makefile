base: Dockerfile.base
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/base:testing -f Dockerfile.desktop .
base-push: Dockerfile.base
	docker buildx build --platform linux/arm64,linux/amd64 -t docker.zhr.one/kasm/base:testing --push -f Dockerfile.desktop .
base-arm64: Dockerfile.base
	docker buildx build --platform linux/arm64 -t kasm/base:testing -f Dockerfile.desktop .

desktop: Dockerfile.desktop
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/desktop:testing -f Dockerfile.desktop .
desktop-push: Dockerfile.desktop
	docker buildx build --platform linux/arm64,linux/amd64 -t docker.zhr.one/kasm/desktop:testing --push -f Dockerfile.desktop .
desktop-arm64: Dockerfile.desktop
	docker buildx build --platform linux/arm64 -t kasm/desktop:testing -f Dockerfile.desktop .
