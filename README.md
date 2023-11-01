# Ocean-Dev Docker Images

[Ocean](https://docs.ocean.dwavesys.com/en/stable) is
[D-Wave's](https://www.dwavesys.com) suite of tools for solving hard problems
with quantum computers. Ocean docker images are available in a DockerHub
repository, [`dwavesys/ocean`](https://hub.docker.com/r/dwavesys/ocean).

Ocean-Dev docker images extend Ocean images with additional development tools,
and optional non-open-source Ocean packages like
[`dwave-inspector`](https://github.com/dwavesystems/dwave-inspector) and
[`dwave-drivers`](https://github.com/dwavesystems/dwave-drivers).


## Build Matrix

- Ocean: [`6.7.0`](https://github.com/dwavesystems/dwave-ocean-sdk/releases/6.7.0)
- Python: `3.9`, `3.10`, **`3.11`** (default)
- Platform: [`bullseye`](https://wiki.debian.org/DebianBullseye), `windowsservercore`


## Architectures

All Linux images are built for `amd64` and `arm64` architectures, and are available
as multi-arch docker images.

Windows images are build for `amd64` only.


## Supported tags, with `Dockerfile` links

Simple tags represent "canonical images" and their aliases. Each simple tag maps
to an image with specific ocean version, python version, and platform.
Architecture can be shared, though; Linux simple tags point to multi-arch images.

Shared tags map to multi-platform/multi-architecture images.


### Simple Tags

- [Ocean: `6.7.0`, Python: `3.11`, Platform: `bullseye`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.11/bullseye/Dockerfile)
  - `6-bullseye`
  - `6-python3.11-bullseye`
  - `6.7-bullseye`
  - `6.7-python3.11-bullseye`
  - `6.7.0-bullseye`
  - `6.7.0-python3.11-bullseye`
  - `bullseye`
  - `python3.11-bullseye`

- [Ocean: `6.7.0`, Python: `3.11`, Platform: `windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.11/windowsservercore/Dockerfile)
  - `6-python3.11-windowsservercore`
  - `6-windowsservercore`
  - `6.7-python3.11-windowsservercore`
  - `6.7-windowsservercore`
  - `6.7.0-python3.11-windowsservercore`
  - `6.7.0-windowsservercore`
  - `python3.11-windowsservercore`
  - `windowsservercore`

- [Ocean: `6.7.0`, Python: `3.9`, Platform: `bullseye`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.9/bullseye/Dockerfile)
  - `6-python3.9-bullseye`
  - `6.7-python3.9-bullseye`
  - `6.7.0-python3.9-bullseye`
  - `python3.9-bullseye`

- [Ocean: `6.7.0`, Python: `3.9`, Platform: `windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.9/windowsservercore/Dockerfile)
  - `6-python3.9-windowsservercore`
  - `6.7-python3.9-windowsservercore`
  - `6.7.0-python3.9-windowsservercore`
  - `python3.9-windowsservercore`

- [Ocean: `6.7.0`, Python: `3.10`, Platform: `bullseye`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.10/bullseye/Dockerfile)
  - `6-python3.10-bullseye`
  - `6.7-python3.10-bullseye`
  - `6.7.0-python3.10-bullseye`
  - `python3.10-bullseye`

- [Ocean: `6.7.0`, Python: `3.10`, Platform: `windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.10/windowsservercore/Dockerfile)
  - `6-python3.10-windowsservercore`
  - `6.7-python3.10-windowsservercore`
  - `6.7.0-python3.10-windowsservercore`
  - `python3.10-windowsservercore`


### Shared Tags

- `6-python3.10`, `6.7-python3.10`, `6.7.0-python3.10`, `python3.10`
  - [`6.7.0-python3.10-bullseye`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.10/bullseye/Dockerfile)
  - [`6.7.0-python3.10-windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.10/windowsservercore/Dockerfile)
- `6`, `6-python3.11`, `6.7`, `6.7-python3.11`, `6.7.0`, `6.7.0-python3.11`, `latest`, `python3.11`
  - [`6.7.0-python3.11-bullseye`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.11/bullseye/Dockerfile)
  - [`6.7.0-python3.11-windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.11/windowsservercore/Dockerfile)
- `6-python3.9`, `6.7-python3.9`, `6.7.0-python3.9`, `python3.9`
  - [`6.7.0-python3.9-bullseye`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.9/bullseye/Dockerfile)
  - [`6.7.0-python3.9-windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/6/python3.9/windowsservercore/Dockerfile)


## License

Ocean is released under the Apache License 2.0.

Ocean dockerfiles (in this repo) are released under the Apache License 2.0 as well.
See [LICENSE](./LICENSE) file.

Some optional, non-open-source, Ocean packages included in Ocean-Dev docker images
are released under the D-Wave EULA. Specifically, these include the visualization component
of [dwave-inspector](https://docs.ocean.dwavesys.com/en/stable/licenses/inspector.html)
and [dwave-drivers](https://docs.ocean.dwavesys.com/en/stable/licenses/drivers.html),
a utility for finding appropriate flux bias offsets.

However, bear in mind that docker images in general contain other software which
may be under other licenses. It is the image user's responsibility to ensure
that any use of this image complies with any relevant licenses for all software
contained within.
