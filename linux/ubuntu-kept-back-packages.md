### Kept back packages in Ubuntu

Sometimes, an upgrade says that some packages have been kept back. Usually, this occurs:
> If the dependencies have changed on one of the packages you have installed so that a new package must be installed to perform the upgrade then that will be listed as "kept-back".

And the system cam be upgraded safely with `sudo apt-get --with-new-pkgs upgrade`.
