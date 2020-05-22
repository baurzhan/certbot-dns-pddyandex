#!/bin/bash
./register.sh
trap exit TERM; while :; do renew.sh; sleep 12h & wait $!; done;