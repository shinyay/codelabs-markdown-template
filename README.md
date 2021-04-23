# Google Codelab Format template by Markdown

- [Tools for authoring and serving codelabs](https://github.com/googlecodelabs/tools)
- [Codelab Formatting Guide](https://github.com/googlecodelabs/tools/blob/master/FORMAT-GUIDE.md)

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
## Installation

## Licence

Released under the [MIT license](https://gist.githubusercontent.com/shinyay/56e54ee4c0e22db8211e05e70a63247e/raw/34c6fdd50d54aa8e23560c296424aeb61599aa71/LICENSE)

## Author

[shinyay](https://github.com/shinyay)
