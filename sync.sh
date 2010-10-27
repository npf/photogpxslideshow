#!/bin/bash
REMOTEHOST=npf@free
REMOTEDIR=photogpxslideshow
while f=$(inotifywait -r -q -e modify --exclude ".*(\.swp|~)" --format "%w%f" ./); do 
	date
	ncftpput $REMOTEHOST $REMOTEDIR/${f%/*} $f
done
