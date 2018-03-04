#!/bin/bash

EXP_REVISION=20f7135
CUR_REVISION=$(git rev-parse --short HEAD)

if [ $? -ne 0 ]; then
	exit $?
fi

# Uncomment this doublecheck if you know what you're doing
if [ "$EXP_REVISION" != "$CUR_REVISION" ]; then
	echo "Revision mismatch: should be $EXP_REVISION"
	exit 1
fi

while IFS= read -r pname; do
	patch -d .. -Rp1 < "$pname"
	if [ $? -ne 0 ]; then
		echo "Something went wrong! Retreat!.."
		exit 1
	fi
done < "order"
