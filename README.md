# Ocean-Dev Docker Images

[Ocean](https://docs.ocean.dwavesys.com/en/stable) is
[D-Wave's](https://www.dwavesys.com) suite of tools for solving hard problems
with quantum computers. Ocean docker images are available in a DockerHub
repository, [`dwavesys/ocean`](https://hub.docker.com/r/dwavesys/ocean).

Ocean-Dev docker images extend Ocean images with additional development tools,
and optional Ocean packages like
[`dwave-inspector`](https://github.com/dwavesystems/dwave-inspector) and
[`dwave-drivers`](https://github.com/dwavesystems/dwave-drivers).

## Build Matrix

- Ocean: [`6.5.0`](https://github.com/dwavesystems/dwave-ocean-sdk/releases/6.5.0)
- Python: `3.9`, `3.10`, **`3.11`** (default)
- Platform: [`bullseye`](https://wiki.debian.org/DebianBullseye), `slim` (minimal bullseye), `windowsservercore`

## License

Ocean is released under the Apache License 2.0.

Ocean dockerfiles (in this repo) are released under the Apache License 2.0 as well.
See [LICENSE](./LICENSE) file.

Some optional Ocean packages are released under the D-Wave EULA.

However, bear in mind that docker images in general contain other software which
may be under other licenses. It is the image user's responsibility to ensure
that any use of this image complies with any relevant licenses for all software
contained within.
