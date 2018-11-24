# Purpose

This repository contains the API specification in OpenAPI 3 format. Server and client stubs can be generated from this API specification.

# Requirements

- Node.js
- Yarn

# Usage

## Generating server stubs from scratch

The following Bash snippet is for generating server stubs.
The resulting server stubs are not meant to be committed to this repository.

```
(
  set -ex

  yarn install
  trash build/server || true

  yarn openapi-generator generate \
    -g ruby-sinatra \
    -i src/openapi/wall.json \
    -o build/server

  cd build/server

  bundle config --local allow_offline_install true
  bundle config --local path vendor/bundle
)
```
