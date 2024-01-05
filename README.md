### Hexlet tests and linter status:
[![Actions Status](https://github.com/QQpy3ko/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/QQpy3ko/devops-for-programmers-project-74/actions)

[![test-build-and-push](https://github.com/QQpy3ko/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg?branch=main)](https://github.com/QQpy3ko/devops-for-programmers-project-74/actions/workflows/push.yml)


# Devops Hexlet project with Docker
[Image on Docker Hub](https://hub.docker.com/r/qqpy3ko/devops-for-programmers-project-74)

docker pull qqpy3ko/devops-for-programmers-project-74:latest

# Requirements

- Docker
- Make

# Install dependencies

make install-depend

# Development
make compose-dev (locally with sqlite)

# Running Tests
make ci

# Build image for production and tests separately
make compose-build-prod

# Clean context
make docker-orph