--- EMPLOYEE RETENTION ANALYSIS

--- Q1. Who are the top 5 highest serving employees?

select first_name || ' ' || last_name as "Full_Name", employee_id, hire_date, job_title
from employee e
where e.employee_id not in (select employee_id from turnover) 
order by hire_date asc
limit 5;


--- Q2. What is the turnover rate for each department?

select d.department_id, d.department_name,
	count(distinct e.employee_id) as "Total_Employee",
	count(distinct t.employee_id) as "Employee_Left",
	(count(distinct t.employee_id) * 100 / count(distinct e.employee_id)) as "Turnover_Rate%"
from department d
left join employee e on e.department_id = d.department_id
left join turnover t on t.department_id = d.department_id
group by d.department_id, d.department_name
order by "Turnover_Rate%" desc;


--- Q3. Which employees are at risk of leaving based on their performance?

select e.employee_id, e.first_name || ' ' || e.last_name as "Full_Name", "Avg_Performance"
from(select p.employee_id, round(avg(performance_score), 2) as "Avg_Performance"
	 from performance p
	 group by p.employee_id
) as p
left join employee e on e.employee_id = p.employee_id
order by "Avg_Performance" asc
limit 3;


--- Q4. What are the main reasons employees are leaving the company?

select reason_for_leaving, count(reason_for_leaving) as "Top_Reason_for_Leaving"
from turnover t
group by t.reason_for_leaving
order by "Top_Reason_for_Leaving" desc;


--- Q5. How many employees have left the company?

select count(distinct turnover_id) as "Total_Employee_Left"
from turnover;



--- PERFORMANCE ANALYSIS

--- Q1. How many employees have an average performance score of 5.0?

select count(*) as "Employee_With_Per_Score_5.0"
from (
	select employee_id, avg(performance_score) as "Avg_Score"
	from performance
	group by employee_id
) as p
where "Avg_Score" = 5.0;


--- Q2. How many employees have an average performance score below 3.5?

Select count(*) as "Employee_With_Per_Score_Below3.5"
From (
      select employee_id, avg(performance_score) as "Avg_Score"
      from performance
      group by employee_id
) as p
where "Avg_Score" < 3.5;


--- Q3.   Which department has the most employees with a performance of 5.0?

select d.department_name, "Avg_Score_5.0"
from (select p.department_id, avg(p.performance_score) as "Avg_Score_5.0"
	  from performance p
	  group by p.department_id
) as p
left join department d on d.department_id = p.department_id
where "Avg_Score_5.0" = 5.0;


---Q4. Which department has the most employees with a performance below 3.5?

select d.department_name, "Avg_Score_below3.5"
from (select p.department_id, avg(p.performance_score) as "Avg_Score_below3.5"
	  from performance p
	  group by p.department_id
) as p
left join department d on d.department_id = p.department_id
where "Avg_Score_below3.5" < 3.5;


--- Q5.  What is the average performance score by department?

select department_name, "Avg_Score"
from (select p.department_id, round(avg(p.performance_score), 2) as "Avg_Score"
	  from performance p
      group by p.department_id
) as p
left join department d on d.department_id = p.department_id
order by "Avg_Score" desc;



--- SALARY ANALYSIS

--- Q1. What is the total salary expense for the company?

select 
	to_char (sum(salary_amount), 'fm$999g999g999g999d00') as "Total_Salary"
from salary;


---Q2. What is the average salary by job title?

select e.job_title, 
	to_char(avg(s.salary_amount), 'fm$999g999g999g999d00') as "Avg_Total_Salary"
from employee e
left join salary s on s.employee_id = e.employee_id
group by e.job_title
order by "Avg_Total_Salary" desc;


--- Q3. How many employees earn above 80,000?

select count(*) as "No_Earners_Above_$80,000" from employee e
left join salary s on s.employee_id = e.employee_id
where salary_amount > 80000;


--- Q4. How does performance correlate with salary across departments?

select d.department_name, 
	to_char(sum(s.salary_amount), 'fm$999g999g999g999d00') as "Total_Salary_Amount", 
	round(avg(p.performance_score), 2) as "Avg_Performance"
from department d
left join salary s on s.depaartment_id = d.department_id
left join performance p on p.department_id = d.department_id
group by d.department_name
order by "Avg_Performance" desc;

 

