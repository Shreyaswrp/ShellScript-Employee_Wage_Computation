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

 case  $result in 
                1)workhour=10;;
                0)workhour=8;;
                *)workhour=0;;
        esac
                echo $workhour

workingdaypermonth=20
wageperday=$dailywage
wagepermonth=$((workingdaypermonth*wageperday))
echo  $wagepermonth

