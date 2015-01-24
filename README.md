The collection contains FreeBSD compatible versions of common DTrace scripts.

# bsdrwsnoop

Outputs information about read/write calls by processes.
Provides possibility to filter output by a certain process
name or PID.

## Example:
    ./bsdrwsnoop
    ./bsdrwsnoop -p 1773
    ./bsdrwsnoop -n bash

# zfsslower.d

Shows ZFS read/write per process and file that are slower than
a certain number of milliseconds, provided as a command line argument

## Example:
    ./zfsslower.d 100

# zilt10k.d

Traces 10,000 IO events or 15 minutes, whichever comes first. Traces user-level events via the
ZFS/VFS interfaces, and is very verbose, because it includes ARC hits.

## Example:
    ./zilt10k.d

# vfssnoop.d

Observes VFS events (open, close, read, etc.) for running systems

## Example:
    ./vfssnoop.d

# zfstxgsyncbytes.d

Track the amount of outstanding dirty data within your storage pool to know which way to adjust zfs_dirty_data_max.

## Example:
    ./zfstxgsyncbytes.d zroot

# zfstxgsyncduration.d

Measure the time to sync transaction groups, so that you know how long it would take to flush zfs_dirty_data_max bytes to disk.

## Example:
    ./zfstxgsyncbytes.d zroot
