# Requirements

- Yarn

# Installation

```
cd build/server && bundle install
```


# Usage

## Running the server

```
bundle exec rackup -p 5101 config.ru
```

## Testing the server

```
curl 'http://localhost:5101/api/wall/v1/negative/phrases'
```


# Maintenance

## Generating server stubs from scratch

This should normally not be necessary.

```
(
  set -ex

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
