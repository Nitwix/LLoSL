#!/bin/bash

if [ "$1" == "" ]; then
    echo "Nb d'images à télécharger non fourni"
    exit 1
fi

nb_imgs=$1

googleimagesdownload --keywords 'lave-linge' --limit $nb_imgs --format jpg
echo "=== $nb_imgs images de lave-linge téléchargées ==="

googleimagesdownload --keywords 'sèche-linge' --limit $nb_imgs --format jpg
echo "=== $nb_imgs images de sèche-linge téléchargées ==="


# cleanup image file names

clean_file_names(){
    rename 's/\..*\./\./' *
}

cd downloads/lave-linge/
clean_file_names
cd ../sèche-linge/
clean_file_names

