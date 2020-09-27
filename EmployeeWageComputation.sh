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
Random_No_Check=$(($RANDOM%2));
if [[ $IS_EMPLOYEE_PRESENT -eq $Random_No_Check ]];
then
		#If Random_No_check value is '1'
		echo "Employee is present"
		JobType=$(($RANDOM%2))
		if [[ $IS_EMPLOYEE_FULLTIME -eq $JobType ]]
		then
			#If JobType value is '1'.
			echo "This is Full Time Employee"
			Day_Hour=8;
		else
			echo "This is Part Time Employee"
			Day_Hour=4;


		fi
else
	echo "Employee is absent."
	Day_Hour=0;

fi

#calculate total salary of employee
One_Day_Salary_Of_Employee=$(( $WAGE_PER_HOUR * $Day_Hour ))
echo "Your one day salary is creadited to your account,Rupees" $One_Day_Salary_Of_Employee
