cat .bashrc.aliases | grep alias | cut -c 7-120 | sed 's/=/ /g' | awk '{
    if ($2 ~ /^'\'/){
        navigation[$1] = $2
    }
    else if ($2 ~ /^ddgr/){
        ddgr[$1] = $2
    }
    else if ($2 ~ /^megatools/){
        megatools[$1] = $2
    }
    # Add more categories if needed
}
END {
    print "Navigation:"
    for (alias in navigation) {
        printf "%-20s %s\n", alias, navigation[alias]
    }
    print "\nDDGR:"
    for (alias in ddgr) {
        printf "%-20s %s\n", alias, ddgr[alias]
    }
    print "\nMegatools:"
    for (alias in megatools) {
        printf "%-20s %s\n", alias, megatools[alias]
    }
    # Print other categories as needed
}'

