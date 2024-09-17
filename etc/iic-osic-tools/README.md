# iic-osic-tools-asitic
This repo shows the steps to install a version of the Docker Image [iic-osic-tools](https://github.com/iic-jku/IIC-OSIC-TOOLS) with Sky130 PDK ASITIC in Windows (using VNC).

At the moment, the ASITIC [oficial website](http://rfic.eecs.berkeley.edu/~niknejad/asitic.html) is offline but this repo uses a version provided by [Way Back Machine](https://web.archive.org/) in [this link](https://web.archive.org/web/20210411050138/http://rfic.eecs.berkeley.edu/~niknejad/asitic.html).

The ASITIC is used to create inductores, transformers, extract their layout files (e.g. `.cif`) and their circuit equivalent model (e.g. pi model for inductors).

# Downloading the Image

`docker pull hugodiasg/iic-osic-tools-asitic` or just search for `hugodiasg/iic-osic-tools-asitic` in the Docker Desktop.

# Creating the VNC container
`.\start_vnc.bat`

# Running an example

[Check this repo](https://github.com/hugodiasg/asitic-example)

# Installing the ASITIC manually

To install the ASITIC manually, run `install.sh`.

To install the ASITIC in the [iic-osic-tools](https://github.com/iic-jku/IIC-OSIC-TOOLS), follow the steps in `install_on_iic-osic.txt`.
