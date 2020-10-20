echo "welcome"
#! /bin/bash -x
rev=""
s=0
function palindrome() {

n=$1
rev=''
t=$n

while [ $n -gt 0 ]
do

	s=$(( $n % 10 ))
	n=$(( $n / 10 ))
	rev=$( echo ${rev}${s} )
done
if [ $t -eq $rev ]
then
	echo "$t is a palindrome Number"
else
	echo "$t is not a palindrome number"
fi
}
for (( i=0;i<3;i++ ))
do
palindrome $((RANDOM%900 +100))
done
