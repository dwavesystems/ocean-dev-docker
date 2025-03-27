# Ocean-Dev Docker Images

[Ocean](https://docs.dwavequantum.com/en/latest/ocean/) is
[D-Wave's](https://www.dwavesys.com) suite of tools for solving hard problems
with quantum computers. Ocean docker images are available in a DockerHub
repository, [`dwavesys/ocean`](https://hub.docker.com/r/dwavesys/ocean).

Ocean-Dev docker images extend Ocean images with additional development tools,
and optional non-open-source Ocean packages like
[`dwave-inspector`](https://github.com/dwavesystems/dwave-inspector).


## Build Matrix

- Ocean: [`8.3.0`](https://github.com/dwavesystems/dwave-ocean-sdk/releases/8.3.0)
- Python: `3.9`, `3.10`, `3.11`, **`3.12`** (default), `3.13`
- Platform: [`bookworm`](https://wiki.debian.org/DebianBookworm), `windowsservercore`


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

- [Ocean: `8.3.0`, Python: `3.12`, Platform: `bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.12/bookworm/Dockerfile)
  - `8-bookworm`
  - `8-python3.12-bookworm`
  - `8.3-bookworm`
  - `8.3-python3.12-bookworm`
  - `8.3.0-bookworm`
  - `8.3.0-python3.12-bookworm`
  - `bookworm`
  - `python3.12-bookworm`

- [Ocean: `8.3.0`, Python: `3.12`, Platform: `windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.12/windowsservercore/Dockerfile)
  - `8-python3.12-windowsservercore`
  - `8-windowsservercore`
  - `8.3-python3.12-windowsservercore`
  - `8.3-windowsservercore`
  - `8.3.0-python3.12-windowsservercore`
  - `8.3.0-windowsservercore`
  - `python3.12-windowsservercore`
  - `windowsservercore`

- [Ocean: `8.3.0`, Python: `3.9`, Platform: `bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.9/bookworm/Dockerfile)
  - `8-python3.9-bookworm`
  - `8.3-python3.9-bookworm`
  - `8.3.0-python3.9-bookworm`
  - `python3.9-bookworm`

- [Ocean: `8.3.0`, Python: `3.9`, Platform: `windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.9/windowsservercore/Dockerfile)
  - `8-python3.9-windowsservercore`
  - `8.3-python3.9-windowsservercore`
  - `8.3.0-python3.9-windowsservercore`
  - `python3.9-windowsservercore`

- [Ocean: `8.3.0`, Python: `3.10`, Platform: `bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.10/bookworm/Dockerfile)
  - `8-python3.10-bookworm`
  - `8.3-python3.10-bookworm`
  - `8.3.0-python3.10-bookworm`
  - `python3.10-bookworm`

- [Ocean: `8.3.0`, Python: `3.10`, Platform: `windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.10/windowsservercore/Dockerfile)
  - `8-python3.10-windowsservercore`
  - `8.3-python3.10-windowsservercore`
  - `8.3.0-python3.10-windowsservercore`
  - `python3.10-windowsservercore`

- [Ocean: `8.3.0`, Python: `3.11`, Platform: `bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.11/bookworm/Dockerfile)
  - `8-python3.11-bookworm`
  - `8.3-python3.11-bookworm`
  - `8.3.0-python3.11-bookworm`
  - `python3.11-bookworm`

- [Ocean: `8.3.0`, Python: `3.11`, Platform: `windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.11/windowsservercore/Dockerfile)
  - `8-python3.11-windowsservercore`
  - `8.3-python3.11-windowsservercore`
  - `8.3.0-python3.11-windowsservercore`
  - `python3.11-windowsservercore`

- [Ocean: `8.3.0`, Python: `3.13`, Platform: `bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.13/bookworm/Dockerfile)
  - `8-python3.13-bookworm`
  - `8.3-python3.13-bookworm`
  - `8.3.0-python3.13-bookworm`
  - `python3.13-bookworm`

- [Ocean: `8.3.0`, Python: `3.13`, Platform: `windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.13/windowsservercore/Dockerfile)
  - `8-python3.13-windowsservercore`
  - `8.3-python3.13-windowsservercore`
  - `8.3.0-python3.13-windowsservercore`
  - `python3.13-windowsservercore`


### Shared Tags

- `8-python3.10`, `8.3-python3.10`, `8.3.0-python3.10`, `python3.10`
  - [`8.3.0-python3.10-bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.10/bookworm/Dockerfile)
  - [`8.3.0-python3.10-windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.10/windowsservercore/Dockerfile)
- `8-python3.11`, `8.3-python3.11`, `8.3.0-python3.11`, `python3.11`
  - [`8.3.0-python3.11-bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.11/bookworm/Dockerfile)
  - [`8.3.0-python3.11-windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.11/windowsservercore/Dockerfile)
- `8`, `8-python3.12`, `8.3`, `8.3-python3.12`, `8.3.0`, `8.3.0-python3.12`, `latest`, `python3.12`
  - [`8.3.0-python3.12-bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.12/bookworm/Dockerfile)
  - [`8.3.0-python3.12-windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.12/windowsservercore/Dockerfile)
- `8-python3.13`, `8.3-python3.13`, `8.3.0-python3.13`, `python3.13`
  - [`8.3.0-python3.13-bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.13/bookworm/Dockerfile)
  - [`8.3.0-python3.13-windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.13/windowsservercore/Dockerfile)
- `8-python3.9`, `8.3-python3.9`, `8.3.0-python3.9`, `python3.9`
  - [`8.3.0-python3.9-bookworm`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.9/bookworm/Dockerfile)
  - [`8.3.0-python3.9-windowsservercore`](https://github.com/dwavesystems/ocean-dev-docker/blob/master/dockerfiles/8/python3.9/windowsservercore/Dockerfile)


## License

Ocean is released under the Apache License 2.0.

Ocean dockerfiles (in this repo) are released under the Apache License 2.0 as well.
See [LICENSE](./LICENSE) file.

Some optional, non-open-source, Ocean packages included in Ocean-Dev docker images
are released under the
[D-Wave EULA](https://docs.dwavequantum.com/en/latest/licenses.html#ocean-software-non-open-source-packages).
Specifically, these currently include the visualization component of `dwave-inspector`.

However, bear in mind that docker images in general contain other software which
may be under other licenses. It is the image user's responsibility to ensure
that any use of this image complies with any relevant licenses for all software
contained within.
