#/bin/bash
#Displying welcome to employee wage computation program
echo "Welcome To EmployeeWageComputaion program"
#Set "1" to indicate employee is present.
#Constant
IS_EMPLOYEE_PRESENT=1;
IS_EMPLOYEE_FULLTIME=1;
IS_EMPLOYEE_PARTTIME=0;
WAGE_PER_HOUR=20;
#Variable
Random_No_Check=$(($RANDOM%3));
case $Random_No_Check in
	$IS_EMPLOYEE_FULLTIME)
			     echo "This is Full Time Employee"
			     Day_Hour=8;
			     ;;
	$IS_EMPLOYEE_PARTTIME) echo "This is Part Time Employee"
			     Day_Hour=4;
			     ;;
		           *) echo "Employee is absent."
		             Day_Hour=0;
			     ;;

esac

#calculate total salary of employee
One_Day_Salary_Of_Employee=$(( $WAGE_PER_HOUR * $Day_Hour ))
echo "Your one day salary is creadited to your account,Rupees" $One_Day_Salary_Of_Employee
