show databases;

use sys;

select * from hr_employee_attrition;

 
#1

select  count(*) as TotalEmployees
FROM hr_employee_attrition;



#2
select count(*) as EmployeesWhoLeft
from hr_employee_attrition
where Attrition = 'Yes';


#3
select Attrition, avg(Age) as AverageAge
from hr_employee_attrition
group by Attrition;



#4

select Department, count(*) as AttritionCount
FROM hr_employee_attrition
where Attrition = 'Yes'
group by Department;


#5

select EmployeeNumber, MonthlyIncome
from hr_employee_attrition
order by MonthlyIncome desc
limit 5;

#6

select JobRole, avg(JobSatisfaction) as AvgJobSatisfaction
from hr_employee_attrition
group by JobRole;


#7

select YearsAtCompany, count(*) as EmployeeCount
from hr_employee_attrition  
group by YearsAtCompany
order by YearsAtCompany;


#8

select count(*) as OvertimeAttrition
from hr_employee_attrition hea 
where OverTime = 'Yes' and Attrition = 'Yes';


#9

select Education, avg(MonthlyIncome) as AvgIncome
from hr_employee_attrition hea 
group by Education
order by Education;



#10

select EmployeeNumber, PerformanceRating, YearsSinceLastPromotion
from hr_employee_attrition hea 
where PerformanceRating = 4 and YearsSinceLastPromotion >= 3;
















