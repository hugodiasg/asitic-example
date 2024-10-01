# iic-osic-tools-asitic

This repository outlines the steps to install a version of the Docker image [iic-osic-tools](https://github.com/iic-jku/IIC-OSIC-TOOLS) with Sky130 PDK ASITIC on Windows (using VNC).

Currently, the official ASITIC [website](http://rfic.eecs.berkeley.edu/~niknejad/asitic.html) is offline. However, this repository utilizes a version provided by the [Wayback Machine](https://web.archive.org/) available [here](https://web.archive.org/web/20210411050138/http://rfic.eecs.berkeley.edu/~niknejad/asitic.html).

ASITIC is used to create inductors and transformers, extract their layout files (e.g., `.cif`), and generate their circuit equivalent models (e.g., Pi model for inductors).

# Downloading the Image

You can use the command `docker pull hugodiasg/iic-osic-tools-asitic` or simply search for `hugodiasg/iic-osic-tools-asitic` in Docker Desktop.

# Creating the VNC container
`.\start_vnc.bat`

# ... Or Install the ASITIC manually in iic-osic-tools

To install ASITIC in the [iic-osic-tools](https://github.com/iic-jku/IIC-OSIC-TOOLS), follow the steps outlined in `install_on_iic-osic.txt`.

