#!/bin/sh

LD_LIBRARY_PATH="/opt/marble/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH
/opt/marble/bin/marble
