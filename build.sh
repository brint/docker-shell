set -ex

# Build
docker build -t brint/docker-shell .

# Test
docker run --rm brint/docker-shell docker
docker run --rm brint/docker-shell docker-machine --version
docker run --rm brint/docker-shell docker-compose version
docker run --rm brint/docker-shell aws --version
docker run --rm brint/docker-shell virtualenv --version
docker run --rm brint/docker-shell rbenv -v
