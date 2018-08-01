#!/bin/bash

nb_imgs=$(node nb_imgs.js)

download_imgs() {
    googleimagesdownload --aspect_ratio tall --keywords $1 --limit $2 --format jpg --size medium
    echo "=== $2 images de $1 téléchargées ==="
}

download_imgs lave-linge $nb_imgs

download_imgs sèche-linge $nb_imgs

./clean-img-names.sh