#!/bin/bash
grep -n '$#' file.txt| awk '{ print $0+0,NF }'

