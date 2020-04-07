#!/bin/bash
# filef="USER INPUT"
echo "HELLO"
# read -p "Enter file to find and delete, it must be .txt: " filef
# # dir="USER INPUT"
# read -p "Enter where the parent folder is, like cd: " dir
# cd "$dir"
# files_find=()
# for i in `find . -name "$filef"` ; do 
#     files_find+=($i)
# done

# echo $files_find 

# count=0
# trap "echo -e 'there are $count'" SIGINT

# for i in "${files_find[@]}"; do
#     read -p "Do you wish to delete this file? $i" yn
#     case $yn in
#         [Yy]* ) `rm $i`; count=$(($count+1)); echo "Already delete $count files";;
#         [Nn]* ) continue;;
#         * ) echo -e "\n Please answer yes or no.";;
#     esac
# done
