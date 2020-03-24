# taking three input from user
echo enter the first value
read a
echo enter the second value
read b
echo enter the third value
read c
echo $(( $a % $(($b + $c)) ))
echo $(( $a + $(($b * $c)) ))
echo $(( $a * $(($b + $c)) ))
echo $(( $c + $(($a / $b)) ))
echo stroring values into dictionary
declare -A value
value[FirstComputation]=$(( $a % $(($b + $c)) ))
value[SecondComputation]=$(( $a + $(($b * $c)) ))
value[ThirdComputation]=$(( $a * $(($b + $c)) ))
value[FourthComputation]=$(( $c + $(($a / $b)) ))
echo "FirstComputation" ${value[FirstComputation]}
echo "SecondComputation" ${value[SecondComputation]}
echo "ThirdComputation" ${value[ThirdComputation]}
echo "FourthComputation" ${value[FourthComputation]}
echo storing dictionary into array
counter=0
values[ ((counter++)) ]=${value[FirstComputation]}
values[ ((counter++)) ]=${value[SecondComputation]}
values[ ((counter++)) ]=${value[ThirdComputation]}
values[ ((counter++)) ]=${value[FourthComputation]}
echo elements in values
echo ${values[@]}
echo sorting the elemets
for (( i = 0; i < 4 ; i++ ))
do
   for (( j = $i; j < 4; j++ ))
   do
      if [ ${values[$i]} -lt ${values[$j]} ]; then
           t=${values[$i]}
           values[$i]=${values[$j]}
           values[$j]=$t
     fi
   done
done
echo "Array in sorted order :"
echo ${values[@]}
