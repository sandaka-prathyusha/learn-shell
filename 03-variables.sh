a=10
name=DevOps

# print variables
echo a = ${a}
echo name = ${name}
e
#Date
DATE=$(date +%F)
echo today date is ${DATE}

ARTH=$((2-3*4/2))

echo ARTH =${ARTH}


#special variables for inputs
echo script name -$0
echo first Argument -$1
echo  second Argument -$2
echo all argument -$*
echo no of argument -$#