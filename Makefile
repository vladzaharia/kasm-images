desktop: Dockerfile.desktop
	docker buildx build --platform linux/arm64,linux/amd64 -t personal-desktop:testing -f Dockerfile.desktop .
desktop-push: Dockerfile.desktop
	docker buildx build --platform linux/arm64,linux/amd64 -t docker.zhr.one/personal-desktop:testing --push -f Dockerfile.desktop .
desktop-arm64: Dockerfile.desktop
	docker buildx build --platform linux/arm64 -t personal-desktop:testing -f Dockerfile.desktop .
