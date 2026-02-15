// docker-bake.hcl
variable "DOCKER_METADATA_TAGS" {
  default = ""
}

variable "DOCKER_METADATA_LABELS" {
  default = ""
}

target "node22-docker" {
  context = "./"
  dockerfile = "dockerfiles/Dockerfile.node22-docker"
  tags = ["ghcr.io/gitea-runner:node22-docker"]
  platforms = ["linux/amd64", "linux/arm64"]
  labels = {
    "maintainer": "fjy8018"
  }
}

target "node22-maven-jdk8" {
  context = "./"
  dockerfile = "dockerfiles/Dockerfile.node22-maven-jdk8"
  tags = ["ghcr.io/gitea-runner:node22-maven-jdk8"]
  platforms = ["linux/amd64", "linux/arm64"]
  labels = {
    "maintainer": "fjy8018"
  }
}

target "node22-maven-jdk17" {
  context = "./"
  dockerfile = "dockerfiles/Dockerfile.node22-maven-jdk17"
  tags = ["ghcr.io/gitea-runner:node22-maven-jdk17"]
  platforms = ["linux/amd64", "linux/arm64"]
  labels = {
    "maintainer": "fjy8018"
  }
}

target "node22-maven-jdk21" {
  context = "./"
  dockerfile = "dockerfiles/Dockerfile.node22-maven-jdk21"
  tags = ["ghcr.io/gitea-runner:node22-maven-jdk21"]
  platforms = ["linux/amd64", "linux/arm64"]
  labels = {
    "maintainer": "fjy8018"
  }
}
