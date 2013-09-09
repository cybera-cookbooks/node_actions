# node_actions cookbook

# Usage

This sets up a server for "node actions" as described in the knife-node-actions gem (see: https://github.com/cybera/knife-node-actions). A directory is created for scripts and that directory is added to the PATH for all users so that they can run the scripts without needing the knife plugin as easily as they could run something included directly in /usr/local/bin.

# Recipes

default
-------
Main recipe to set up the directory and add it to the PATH.

# Author

Author:: Cybera (<devops@cybera.ca>)
