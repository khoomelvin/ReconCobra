#!/bin/bash
mkdir js_linkfinder/results
cd js_linkfinder
echo "[ + ] Enter TERMUX option for Termux else press RETURN :"
read $first

if [ "$first" == 'TERMUX' ]

then 

read -p "[ + ] Enter victim url: " victim
echo "$victim"
python js_linkfinder.py --wait=2 --download https://$victim

else

read -p "[ + ] Enter victim url: " victim
echo "$victim"
python3 js_linkfinder.py --wait=2 --download https://$victim

fi

cp * ./results
rm * 
cd ..
