#!/usr/bin/bash

# SPDX-License-Identifier: MIT

# Copyright (c) 2022 Justin Koh <j@ustink.org>
# Copyright (c) 2016-2019 Dylan Araps
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

#----------------------------------------------------------------------
# genmon script to display memory usage
#
# Based on code from pfetch <https://github.com/dylanaraps/pfetch>
#----------------------------------------------------------------------

declare -i mem_used
declare -i mem_full
declare -i mem_avail

# Used memory is calculated using the following "formula":
# MemUsed = MemTotal + Shmem - MemFree - Buffers - Cached - SReclaimable
# Source: https://github.com/KittyKatt/screenFetch/issues/386

# Parse the '/proc/meminfo' file splitting on ':' and 'k'.
# The format of the file is 'key:   000kB' and an additional
# split is used on 'k' to filter out 'kB'.
while IFS=':k ' read -r key val _; do
    case ${key} in
        (MemTotal)
            mem_used=$((mem_used + val))
            mem_full=${val}
        ;;

        (Shmem)
            mem_used=$((mem_used + val))
        ;;

        (MemFree | Buffers | Cached | SReclaimable)
            mem_used=$((mem_used - val))
        ;;

        # If detected this will be used over the above calculation
        # for mem_used. Available since Linux 3.14rc.
        # See kernel commit 34e431b0ae398fc54ea69ff85ec700722c9da773
        (MemAvailable)
            mem_avail=${val}
        ;;
    esac
done < /proc/meminfo

case ${mem_avail} in
    (*[0-9]*)
        mem_used=$(((mem_full - mem_avail) / 1024))
    ;;

    *)
        mem_used=$((mem_used / 1024))
    ;;
esac

mem_full=$((mem_full / 1024))

declare mem_percent="$((mem_used * 100/ mem_full))%"
declare mem_pretty="${mem_used:-?}M / ${mem_full:-?}M"

# Output genmon XML
cat <<-EOF
	<txt>${mem_percent}</txt>
	<tool><b>Memory:</b> ${mem_pretty}</tool>
EOF
