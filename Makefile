all: base base-app desktop vscode

base: Dockerfile.base
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/base:testing -f Dockerfile.base .
base-push: Dockerfile.base
	docker buildx build --platform linux/arm64,linux/amd64 -t docker.zhr.one/kasm/base:testing --push -f Dockerfile.base .
base-arm64: Dockerfile.base
	docker buildx build --platform linux/arm64 -t kasm/base:testing -f Dockerfile.base .

base-app: Dockerfile.base-app
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/base-app:testing -f Dockerfile.base-app .
base-app-push: Dockerfile.base-app
	docker buildx build --platform linux/arm64,linux/amd64 -t docker.zhr.one/kasm/base-app:testing --push -f Dockerfile.base-app .
base-app-arm64: Dockerfile.base-app
	docker buildx build --platform linux/arm64 -t kasm/base-app:testing -f Dockerfile.base-app .

desktop: Dockerfile.desktop
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/desktop:testing -f Dockerfile.desktop .
desktop-push: Dockerfile.desktop
	docker buildx build --platform linux/arm64,linux/amd64 -t docker.zhr.one/kasm/desktop:testing --push -f Dockerfile.desktop .
desktop-arm64: Dockerfile.desktop
	docker buildx build --platform linux/arm64 -t kasm/desktop:testing -f Dockerfile.desktop .

vscode: Dockerfile.vscode
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/vscode:testing -f Dockerfile.vscode .
vscode-push: Dockerfile.vscode
	docker buildx build --platform linux/arm64,linux/amd64 -t docker.zhr.one/kasm/vscode:testing --push -f Dockerfile.vscode .
vscode-arm64: Dockerfile.vscode
	docker buildx build --platform linux/arm64 -t kasm/vscode:testing -f Dockerfile.vscode .
