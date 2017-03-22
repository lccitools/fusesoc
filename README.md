# FuseSoC Builder for LibreCores CI tools

LibreCores CI tools (lcci-tools) is a set of tools available on
LibreCores CI. The docker images help creating a build environment
fast and reproducibly.

## About

[FuseSoC](https://github.com/olofk/fusesoc) is a package manager for
RTL that handles the dependencies between different cores, fetches
their source, generates the build infrastructure for different tools
and runs the tools.

## How to install?

Run the Docker image in the version you want to install and supply the
tools volume to the container:

    docker run lcci-tools/fusesoc:<version>

## Details

It installs fusesoc in a Python3 venv.

