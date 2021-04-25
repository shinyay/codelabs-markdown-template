# Google Codelab Format template by Markdown

- [Tools for authoring and serving codelabs](https://github.com/googlecodelabs/tools)
- [Codelab Formatting Guide](https://github.com/googlecodelabs/tools/blob/master/FORMAT-GUIDE.md)
- [Codelab Site Template](https://github.com/shinyay/codelabs-getting-started)

## Description

## Demo

## Features

- feature:1
- feature:2

## Requirement

## Usage
### Claat CLI
#### Export HTML from Markdown
```
$ docker run --rm -it -v (pwd):/app shinyay/claat export <TARGET_MARKDOWN>
```

#### Serve published HTML
```
$ cd <GENERATED_HTML_DIR>
$ docker run --rm -it -v (pwd):/app -p 9090:9090 shinyay/claat serve -addr 0.0.0.0:9090
```

### Containerize Static Site
Modify the following point in the Dockerfile ro specify directory

```dockerfile
COPY docs/codelab-markdown-template /usr/share/nginx/html
```

Build container image with **Cloud Build**
```
$ gcloud builds submit --tag us-central1-docker.pkg.dev/(gcloud config get-value project)/<REPO>/<IMAGE>:<TAG>
```

### Deploy App on Cloud Run
```
$ gcloud run deploy --image us-central1-docker.pkg.dev/(gcloud config get-value project)/<REPO>/<IMAGE>:<TAG> --platform managed
```

### Deploy App on GKE
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

### Deploy App on App Engine
```
$ gcloud app deploy
$ gcloud app browse
```

## Installation

## Licence

Released under the [MIT license](https://gist.githubusercontent.com/shinyay/56e54ee4c0e22db8211e05e70a63247e/raw/34c6fdd50d54aa8e23560c296424aeb61599aa71/LICENSE)

## Author

[shinyay](https://github.com/shinyay)
