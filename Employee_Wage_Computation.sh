#! /bin/bash -x
echo "Welcome to employee wage computation"

result=$(($RANDOM%2))
echo $result

if [[ $result == 0 ]]
then
        echo "Absent"
else
        echo "Present"
fi

