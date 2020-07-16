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

wageperhour=20
fulldayhour=8
dailywage=$((wageperhour*fulldayhour))
echo $dailywage

parttimehour=8
parttimewage=$((wageperhour*parttimehour))
echo $parttimewage


function getWorkHour () {
 case  $1 in 
                1)workhour=10;;
                0)workhour=8;;
                *)workhour=0;;
        esac
                echo $workhour

}

workinghourrsperday="$(getWorkHours $(($RANDOM%2)))"
workingdaypermonth=20
wageperday=$dailywage
wagepermonth=$((workingdaypermonth*wageperday))
echo  $wagepermonth


	workinghourspermonth=100
whpm=$workinghourspermonth
wdpm=$workingdaypermonth

noofdays=0
noofhour=0

while [[ $noofdays -lt $wdpm ]] || [[ $noofhour -lt $whpm ]]
do
        ((noofdays++))
        noofhour=$((noofhour+workhour))
        wage=$((wageperhour*noofhour))

done
echo $wage

#storing daily wage along with total wage

rr[counter++]=$dailywage
arr[counter++]=$wagepermonth

echo ${arr[@]}

