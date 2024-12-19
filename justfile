# List all recipes
default:
    just --list --unsorted

# Build all authorizers and services
build:
    mkdir -p ./build
    just build-bootstrap-service
    just build-null-authorizer

# Build jam-bootstrap-service
build-bootstrap-service:
    jam-pvm-build -o ./build/jam-bootstrap-service.pvm ./jam-bootstrap-service

# Build jam-null-authorizer
build-null-authorizer:
    jam-pvm-build -o ./build/jam-null-authorizer.pvm ./jam-null-authorizer

# Clean all authorizers and services
clean:
    rm -rf ./build
