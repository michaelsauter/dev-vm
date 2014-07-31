# Minimal dev vagrant box

This provides a very minimal debian-based vagrant box [box-cutter/debian76](https://vagrantcloud.com/box-cutter/debian76) to be used for development. Intentionally, there is basically no provisioning. It will only install [Skittle](https://github.com/d11wtq/skittle) and Git.

To continue from there, you could for example clone [michaelsauter/skittle-deps](https://github.com/michaelsauter/skittle-deps), install Docker and use this VM as a base for Docker-based development.