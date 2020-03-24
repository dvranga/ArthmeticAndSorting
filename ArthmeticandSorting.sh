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
declare -A value
value[FirstComputation]=$(( $a % $(($b + $c)) ))
value[SecondComputation]=$(( $a + $(($b * $c)) ))
value[ThirdComputation]=$(( $a * $(($b + $c)) ))
value[FourthComputation]=$(( $c + $(($a / $b)) ))
echo "FirstComputation" ${value[FirstComputation]}
echo "SecondComputation" ${value[SecondComputation]}
echo "ThirdComputation" ${value[ThirdComputation]}
echo "FourthComputation" ${value[FourthComputation]}
