# Base Images

CI/CD Runner 基础 Docker 镜像集合，用于 Gitea Actions 等 CI/CD 环境。

## 可用镜像

| 镜像标签 | 基础镜像 | 包含软件 |
|---------|---------|---------|
| `node22-docker` | node:22-bookworm | Node.js 22, Docker CLI, git, yq |
| `node22-maven-jdk8` | node:22-bookworm | Node.js 22, Maven, JDK 8, Docker CLI, git, yq |
| `node22-maven-jdk17` | node:22-bookworm | Node.js 22, Maven, JDK 17, Docker CLI, git, yq |
| `node22-maven-jdk21` | node:22-bookworm | Node.js 22, Maven, JDK 21, Docker CLI, git, yq |
| `node22-python310` | python:3.10-bookworm | Python 3.10, Node.js 22, Docker CLI, git, yq |

## 拉取镜像

```bash
docker pull ghcr.io/fjiayang/gitea-runner:node22-docker
docker pull ghcr.io/fjiayang/gitea-runner:node22-maven-jdk17
docker pull ghcr.io/fjiayang/gitea-runner:node22-python310
```

## 本地构建

使用 Docker Buildx 构建多平台镜像：

```bash
# 构建单个镜像
docker buildx build --platform linux/amd64,linux/arm64 \
  -t gitea-runner:node22-docker \
  -f dockerfiles/Dockerfile.node22-docker .

# 使用 docker-bake 构建所有镜像
docker buildx bake
```

## 自动构建

推送到 `main` 分支时，GitHub Actions 会自动构建并推送镜像到 `ghcr.io`。

## 目录结构

```
.
├── docker-bake.hcl          # Docker Bake 配置
├── dockerfiles/             # Dockerfile 文件
│   ├── Dockerfile.node22-docker
│   ├── Dockerfile.node22-maven-jdk8
│   ├── Dockerfile.node22-maven-jdk17
│   ├── Dockerfile.node22-maven-jdk21
│   └── Dockerfile.node22-python310
├── resources/               # 额外资源文件
└── .github/workflows/       # GitHub Actions 工作流
    └── build.yml
```

## License

MIT
