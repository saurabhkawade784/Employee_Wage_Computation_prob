#/bin/bash
#Displying welcome to employee wage computation program
echo "Welcome To EmployeeWageComputaion program"
#Set "1" to indicate employee is present.
#Constant
IS_EMPLOYEE_PRESENT=1;
IS_EMPLOYEE_FULLTIME=1;
IS_EMPLOYEE_PARTTIME=0;
WAGE_PER_HOUR=20;
WORKING_DAY_IN_MONTH=20;
MAX_HRS_IN_MONTH=100;
#Variable
Emp_Worked_Hrs=0;
Emp_Worked_Days=0;
#dictionary declaration
declare -A dailyWage;
function get(){
	#local Random_No_Check=$1
	case $Random_No_Check in
		$IS_EMPLOYEE_FULLTIME) Day_Hour=8; ;;
		$IS_EMPLOYEE_PARTTIME) Day_Hour=4; ;;
			    	    *) Day_Hour=0; ;;

	esac
	echo $Day_Hour
	       }
while [[ $Emp_Worked_Hrs -lt $MAX_HRS_IN_MONTH && $Emp_Worked_Days -lt $WORKING_DAY_IN_MONTH ]]
do
	((Emp_Worked_Days++))
        Random_No_Check=$(($RANDOM%2));
        Day_Hour=$( get $Random_No_Check )
	Emp_Worked_Hrs=$(( $Emp_Worked_Hrs + $Day_Hour ));
	dailyWage["Day "$Emp_Worked_Days]=$(( $Day_Hour * $WAGE_PER_HOUR ))
done

echo $Emp_Worked_Hrs;
echo "Day and Daily wage with total wage: " ${!dailyWage[@]}
#calculate total salary of employee
#One_Day_Salary_Of_Employee=$(( $WAGE_PER_HOUR * $Day_Hour ))
#echo "Your one day salary is creadited to your account,Rupees" $One_Day_Salary_Of_Employee
#Month_Salary_Of_Employee=$(( $One_Day_Salary_Of_Employee * $WORKING_DAY_IN_MONTH ))
#echo "Your Monthly salary is creadited to your account,Rupees" $Month_Salary_Of_Employee
Tot_Sal=$(( $WAGE_PER_HOUR * $Emp_Worked_Hrs ))
echo "Salary for max 100hrs and 20 days is: rs= " $Tot_Sal
