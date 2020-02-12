#!/bin/bash
#Authors: Vananh Le & Amey Erdenebileg
#Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem

echo "Input a file name: "
read fileName
echo "Input regular expression: "
read regExp
#2
grep -e $regExp $fileName

#3
echo "Number of phones number in: "
egrep -c '[0-9]{3}-[0-9]{3}-[0-9]{4}' $fileName

#4
echo "A count of the number of emails: "
egrep -c '^[A-Za-z0-9._]*[@][A-Za-z]*[.com]' $fileName

echo "A list of all phone number in the 303 Area Code: "
egrep -o '303-[0-9]{3}-[0-9]{4}' $fileName

grep '@geocities.com' $fileName >> email_results.txt
