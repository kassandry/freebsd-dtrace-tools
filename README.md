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
