#!/usr/bin/env bash
################################################################################

repo_stats() {

    # found at: http://www.zipline.io/development-guidelines.html#commit-messages
    for x in BLD BUG DEP DEV DOC ENH MAINT REV STY TST TEST REL PERF
    do
        prefix="${x}: "
        printf '%s' "$prefix"
        git log --format='%s' | grep "^$prefix" | wc -l | sed 's/^\s*//'
    done | sort -t' ' -k2 -n
}

