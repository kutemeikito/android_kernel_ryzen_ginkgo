#!/usr/bin/env bash

find include/uapi -type l | xargs -I% sh -c "rp=\$(realpath '%') && rm '%' && cp -L \$rp '%'"
