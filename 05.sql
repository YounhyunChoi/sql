select avg(salary), max(salary), min(salary), sum(salary)
from employees;

select min(hire_date), max(hire_date)
from employees;

-- ����: �ְ���ް� �ּҿ����� ������ ��ȸ�϶�.
select max(salary) - min(salary)
from employees;

select count(*)
from employees;

-- ����: 70�� �μ����� ������� ��ȸ�϶�.
select count(*)
from employees
where department_id = 70;

select count(employee_id)
from employees;

select count(manager_id)
from employees;

select avg(commission_pct)
from employees;

-- ����: ������ ��� Ŀ�̼����� ��ȸ�϶�.
select avg(nvl(commission_pct, 0))
from employees;

select avg(all salary)
from employees;

select avg(distinct salary)
from employees;

-- ����: ������ ��ġ�� �μ� ������ ��ȸ�϶�.
select count(distinct department_id)
from employees;

-- ����: �Ŵ��� ���� ��ȸ�϶�.
select count(distinct manager_id)
from employees;

select department_id, count(employee_id)
from employees
group by department_id
order by department_id;

select employee_id
from employees
where department_id = 30;

select department_id, job_id, count(employee_id)
from employees
group by department_id, job_id
order by department_id;

-- ����: ������ ������� ��ȸ�϶�.
select job_id, count(employee_id)
from employees
group by job_id;

select department_id, max(salary)
from employees
group by department_id
having department_id > 50;

select department_id, max(salary) max_salary
from employees
group by department_id
having max(salary) > 10000;

select department_id, max(salary) max_sal
from employees
group by department_id
having max_sal > 10000;

select department_id, max(salary)
from employees
where department_id > 50
group by department_id;

select department_id, max(salary)
from employees
where max(salary) > 10000
group by department_id;

select job_id, sum(salary) payroll
from employees
where job_id not like '%REP%'
group by job_id
having sum(salary) > 13000
order by payroll;

-- ����: �Ŵ���ID, �Ŵ����� ���� ������ �� �ּ� ������ ��ȸ�϶�.
--       �ּҿ����� $6,000 �ʰ����� �Ѵ�.
select manager_id, min(salary)
from employees
where manager_id is not null
group by manager_id
having min(salary) > 6000
order by 2 desc;
