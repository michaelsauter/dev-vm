# Minimal dev vagrant box

This provides a very minimal vagrant box ([box-cutter/ubuntu1404-docker](https://vagrantcloud.com/box-cutter/ubuntu1404-docker)) to be used for development. Intentionally, there is basically no provisioning. The box comes with Docker, and installs only [Skittle](https://github.com/d11wtq/skittle) and Git on top of that.

To continue from there, you could for example clone [michaelsauter/skittle-deps](https://github.com/michaelsauter/skittle-deps) and use this VM as a base for Docker-based development.