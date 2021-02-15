#!/bin/bash

# set threshold and change if given cmd argument
echo
if(($#==1))
then
        threshold=$1
        echo Threshold set via argument to ${threshold}%
else
        threshold=80
        echo Threshold set automatically to 80%
fi

# check usage on both drives
root_usage=$(echo `df / | awk '{print $5}'| grep '[0-9][0-9]'`)
boot_usage=$(echo `df /boot | awk '{print $5}' | grep '[0-9][0-9]'`)
root_usage=${root_usage:0:2}
boot_usage=${boot_usage:0:2}

echo utilization of / is ${root_usage}%
echo util of /boot is ${boot_usage}%
echo

# send email if threshold lower than usage
if((${root_usage} > ${threshold}))
then
        mail -s "/ Storage Alert" root <<< "/ is above ${threshold}% utilization"
        echo notified root of / storage status
fi
if((${boot_usage} > ${threshold}))
then
        mail -s "/boot Storage Alert" root <<< "/boot is above ${threshold}% utilization"
        echo notified root of /boot storage status
fi
echo
