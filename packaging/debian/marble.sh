#!/bin/sh

# Set the environment variable XDG_DATA_HOME to have
# marble store cached data in /home/user/MyDocs/marble/data
# Can be overridden by specifying an alternative path in
# the environment variable MARBLE_DATA_HOME, e.g.
# $ export MARBLE_DATA_HOME=/home/user
# which would result in cached data being written to
# /home/user/marble/data.
XDG_DATA_HOME="${MARBLE_DATA_HOME:-${HOME}/MyDocs/.local/share}"
export XDG_DATA_HOME

# Marble is installed in /opt/marble. Add it's library
# to the library search path.
LD_LIBRARY_PATH="/opt/marble/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH

PATH="/opt/marble/bin:${PATH}"
export PATH

/opt/marble/bin/marble $*
