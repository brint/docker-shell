docker-shell
============

This is a simple container that contains a lot of things that I use in my local environment. I've used [docker-box](https://github.com/brint/docker-box) in a similar fashion as a "docker shell" for a while. This example just takes it further. Welcome to one of the more bloated containers on the internet.

# Why U do this?
#### It's surprisingly practical
- We all mess up our local environment from time to time, whether it's our Python environment, Ruby environment, or whatever. Having a container that allows us to easily start over in a known "good state" is awesome.
- We are on more machines than ever. "Dot files" aren't completely portable across operating systems and versions of applications. By having an a built shell, you could mount in your dot files, but all the installation stuff could already be taken care of.
- Share your shell! Ever had a new guy on the team that just can't quite get something setup right and no one can seem to figure out why he's having a problem? Have him pull your container and run the shell while they figure out what's going on locally.
- Dev environment in a box! Similar to the previous note, you can have a container that's standard on your team. Instead of making your teammates update their local environment, have them run a `docker pull` to fetch the latest and greatest. The same container could be used as part of CI.
- Ansible and Chef can't always save the day. Your playbook may work well today, but what about six months from now when that PPA you need is gone? Uh oh. This concepts still follows the "infrastructure as code" practice, we just ship an artifact as a part of it.

#### It's fun
I've been thinking about doing this for a couple years. We all mess up our local environment from time to time, whether it's our Python environment, Ruby environment, or whatever.

#### Why not
Srsly, why not?

#### What are the downsides?
- Your shell history is in a container, so you won't be able to easily track it. I haven't looked into solutions for this.
- Testing can be tricky, so paths are set in ways you wouldn't do on a normal system
- Since the base image is Alpine Linux, to keep things smaller, some things take more effort to get setup and working. There are quite a few things that I haven't gotten working.

# What's inside?
Here's a list of things inside:
- OS: Alpine Linux
- Shell: zsh
- Some of the things installed:
  - [git](https://git-scm.com/)
  - [vim](http://www.vim.org/)
  - [curl](https://curl.haxx.se/)
  - [wget](https://www.gnu.org/software/wget/)
  - [openssh-client](https://www.openssh.com/)
  - [openssl](https://www.openssl.org/)
  - [golang](https://golang.org/)
  - [docker](https://www.docker.com/)
  - [docker-compose](https://github.com/docker/compose)
  - [docker-machine](https://github.com/docker/machine)
  - [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
  - Python stuff:
      - [virtualenv](https://github.com/pypa/virtualenv)
      - [awscli](https://aws.amazon.com/cli/)
      - [awslogs](https://github.com/jorgebastida/awslogs)
      - [azurecli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
  - Ruby stuff:
      - [rbenv](https://github.com/rbenv/rbenv)
      - [Ruby 2.4.0](https://www.ruby-lang.org)
  - [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)


# Usage

#### Download the container
This assumes that you already have docker up and running and your environment variables are set appropriately.

Pull it down from Docker Hub:
```
docker pull brint/docker-shell
```

#### Building the container
Clone down and build your own:
```
git clone https://github.com/brint/docker-shell
cd docker-shell
docker build -t brint/docker-shell .
```

#### Running the container
This container is meant to be run as a shell.

```
docker run -it brint/docker-shell
```

#### Development
Make a feature/bug branch and make a PR back. `build.sh` is included to build the container and perform the tests done in Travis locally.
