# Codelab : Getting Started with Cloud Run and Spring Boot

This is Codelabs tutorial.

## Description

[Template Project: shinyay/codelabs-markdown-template](https://github.com/shinyay/codelabs-markdown-template)

- [Lab Release: v1.0.0](https://github.com/users/shinyay/packages/container/package/codelab-spring-cloud-run-gs)
  - `docker pull ghcr.io/shinyay/codelab-spring-cloud-run-gs:1.0.0`

- [Tutorial Code: shinyay/codelab-spring-boot-rest-code](https://github.com/shinyay/codelab-spring-boot-rest-code)

### Directories description
- `docs` : Codelabs Markdown document
- `tutorial` : Java Project for Tutorial
- `nginx` : Configuration for Nginx

## Demo

## Features

- feature:1
- feature:2

## Requirement

## Usage
### 1. Codelabs site

Convert Markdown to HTML
```
$ cd docs
$ ./claat-export.fish -f *.md
```

Display Codelabs site
```
$ ./claat-serve.fish
$ open http://localhost:9090
```

### 2. Containerize site

Docker build
```
$ cd <PROJECT ROOT>
$ ./docker-build.fish -i/--image <IMAGE_NAME> -t/--tag <VERSION_TAG>
```

Display Codelabs site
```
$ docker run --rm -d -p 8080:8080 --name codelab <IMAGE_NAME><VERSION_TAG>
$ open http://localhost:8080
```

### [OPTION] Build and Deploy with Google Cloud
#### Deploy App on Cloud Run
```
$ gcloud run deploy --image us-central1-docker.pkg.dev/(gcloud config get-value project)/<REPO>/<IMAGE>:<TAG> --platform managed
```

#### Deploy App on GKE
Create GKE Cluster
```
$ gcloud container clusters create-auto shinyay-cluster-auto --region us-central1 --project (gcloud config get-value project)
```

Modify Image Info
```yaml
image: us-central1-docker.pkg.dev/<PROJECT>/<REPO>/<IMAGE>:<TAG>
```

Deploy App
```
$ kubectl apply -f kubernetes/deployment.yml
```

#### Deploy App on App Engine
```
$ gcloud app deploy
$ gcloud app browse
```

## Installation

## References

## Licence

Released under the [MIT license](https://gist.githubusercontent.com/shinyay/56e54ee4c0e22db8211e05e70a63247e/raw/34c6fdd50d54aa8e23560c296424aeb61599aa71/LICENSE)

## Author

[shinyay](https://github.com/shinyay)
