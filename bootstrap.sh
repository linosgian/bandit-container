#!/bin/bash

git clone "$1" "/repo"

# "Consumes" the first argument.
shift

# Pass all other arguments to bandit
! bandit -r "/repo" $@ # Invert exit code because bandit returns 1 upon success
