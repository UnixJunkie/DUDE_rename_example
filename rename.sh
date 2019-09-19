#!/bin/bash

ligands=$1
decoys=$2
output=$3

# prefix all actives with active_
cat $ligands | \
    perl -0777 -pe 's/MOLECULE\n/MOLECULE\nactive_TOX/g' > $output
# prefix all decoys with decoy_
cat $decoys | \
    perl -0777 -pe 's/MOLECULE\n/MOLECULE\ndecoy_TOX/g' >> $output
