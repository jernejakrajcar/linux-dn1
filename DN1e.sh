#!/bin/bash

kopirane=$(rsync -ai $1/* $2 | wc -l)


case $kopirane in
0)
    echo "Ni novih datotek."
;;
1)
    echo "Uspešno kopirana $kopirane datoteka."
;;
2)
    echo "Uspešno kopirani $kopirane datoteki."
;;
[3-4])
    echo "Uspešno kopirane $kopirane datoteke."
;;
*)
    echo "Uspešno kopiranih $kopirane datotek."
esac

