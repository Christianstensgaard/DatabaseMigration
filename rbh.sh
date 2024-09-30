#!/bin/bash
echo "Starting the parsing process"

if [ "$1" == "0" ]; then
    ./rollback.sh -t "rollbackScript" -f "productRatings_rollback" -f "categories_rollback"
elif [ "$1" == "1" ]; then
    echo "Rolling back to the first iteration"
elif [ "$1" == "2" ]; then
    echo "Rolling back to 2."
fi

echo "Done!"
