# Liatrio Apprenticeship Exercise

**Author:** Nico Whitmarsh  
**Date:** February 2026  

This repository contains my implementation of the Liatrio DevOps Apprenticeship interview exercise.

## Objective

Build a simple Golang API, containerize it with Docker, implement a CI pipeline using GitHub Actions, publish versioned images to an OCI repository, and deploy the application to a cloud platform.

## Architecture Overview
- Go (Fiber) HTTP endpoint
- Docker containerization
- GitHub Actions CI/CD pipeline
- Docker Hub image registry
- Automated deployment to AWS EC2

## CI/CD Pipeline
**On pushes to main:**
1. Builds the Docker image
2. Runs the provided apprentice-action tests
3. Tags the image using the workflow run number
4. Pushes the versioned image to Docker Hub
5. Deploys the updated container to an EC2 instance

## Docker Image
https://hub.docker.com/r/nwsuave/liatrio-apprenticeship-exercise

## Live Deployment
The application is currently deployed to AWS EC2:
http://54.215.199.90/
> Note: The EC2 instance may not be running 24/7 due to cost/resource constraints, but the deployment workflow remains fully functional and can be demonstrated live.

## Requirements

- Docker (Docker Desktop on macOS/Windows)

## Run locally

```bash
make dev
```
Then visit:
http://localhost:3000/
