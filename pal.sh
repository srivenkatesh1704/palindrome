echo "welcome"
#! /bin/bash -x
rev=""
s=0
for (( i=0;i<3;i++ ))
do
n=$((RANDOM%900 +100))
echo $n
while [ $n -gt 0 ]
do

	s=$(( $n % 10 ))
	n=$(( $n / 10 ))
	rev=$( echo ${rev}${s} )
done
if [ $n -eq $rev ]
then
	echo "$temp is a palindrome Number"
else
	echo "$temp is not a palindrome number"
fi
done
