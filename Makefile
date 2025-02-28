all: base base-apps desktop vscode

base: Dockerfile.base-ubuntu
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/base/ubuntu:testing -f Dockerfile.base .
base-push: Dockerfile.base
	docker buildx build --platform linux/arm64,linux/amd64 -t images.kasm.polaris.gdn/base/ubuntu:testing --push -f Dockerfile.base .
base-arm64: Dockerfile.base
	docker buildx build --platform linux/arm64 -t kasm/base/ubuntu:testing -f Dockerfile.base .

base-apps: Dockerfile.base-apps
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/base/apps:testing -f Dockerfile.base-apps .
base-apps-push: Dockerfile.base-apps
	docker buildx build --platform linux/arm64,linux/amd64 -t images.kasm.polaris.gdn/base/apps:testing --push -f Dockerfile.base-apps .
base-apps-arm64: Dockerfile.base-apps
	docker buildx build --platform linux/arm64 -t kasm/base/apps:testing -f Dockerfile.base-apps .

desktop: Dockerfile.desktop
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/desktop-ubuntu:testing -f Dockerfile.desktop .
desktop-push: Dockerfile.desktop
	docker buildx build --platform linux/arm64,linux/amd64 -t images.kasm.polaris.gdn/kasm/desktop-ubuntu:testing --push -f Dockerfile.desktop .
desktop-arm64: Dockerfile.desktop
	docker buildx build --platform linux/arm64 -t kasm/desktop-ubuntu:testing -f Dockerfile.desktop .

vscode: Dockerfile.vscode
	docker buildx build --platform linux/arm64,linux/amd64 -t kasm/vscode:testing -f Dockerfile.vscode .
vscode-push: Dockerfile.vscode
	docker buildx build --platform linux/arm64,linux/amd64 -t images.kasm.polaris.gdn/kasm/vscode:testing --push -f Dockerfile.vscode .
vscode-arm64: Dockerfile.vscode
	docker buildx build --platform linux/arm64 -t kasm/vscode:testing -f Dockerfile.vscode .
