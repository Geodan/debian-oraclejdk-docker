#!/bin/bash
# perform a clean up at end of install (build with dockerfile)
#

apt-get clean
rm -rf /var/lib/apt/lists/* /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/*