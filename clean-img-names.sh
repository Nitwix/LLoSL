#!/bin/bash

# cleanup image file names

clean_file_names(){
    rename -force 's/\..*\./\./' *
    rename -force 's/jpeg/jpg/' *
}

cd downloads/lave-linge/
clean_file_names
cd ../sèche-linge/
clean_file_names