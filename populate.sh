#!/bin/zsh

sqlite3 dev\ databases/databasestest3 < create\ and\ populate.db

if [[ $? -eq 1 ]]
then
    echo "Something went wrong, look error messages above"
fi
