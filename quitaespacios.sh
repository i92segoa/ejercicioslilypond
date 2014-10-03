#!/bin/sh
# remove trailing spaces from a file
# usage: quitaespacios <file>
# sed -i 's/\ $//g' editorial.itely
sed -i -e 's/[ \t]*$//' $1