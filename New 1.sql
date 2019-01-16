-- EMPLOYEE 테이블
--[ employee_id = 사번 ] [ first_name = 이름 ] 
--[ last_name = 성 ] [ email = 이메일 ] 
--[ phone_number = 전화번호 ] [ hire_date = 고용일 ]
--[ job_id = 업무코드 ] [ salary = 급여]
--[ commission_pct = 커미션비율 ] [ manager_id = 상사아이디]
--[ department_id = 부서코드]
-- *******
-- 문제001. 
-- HR 스키마 테이블을 모두 출력?
-- *******
SELECT * FROM TAB;
-- *******
-- 문제002. 
-- HR 스키마 테이블 수는 몇개?
-- *******
SELECT COUNT(*) FROM TAB;
-- *******
-- 문제003. 
-- 사번, 성, 이름출력?
-- *******
SELECT employee_id,last_name,first_name FROM EMPLOYEES;
-- *******
-- 문제004. 
-- 이름이 s로 끝나는 직원의 이름 출력?
-- *******
SELECT first_name
FROM EMPLOYEES
WHERE first_name LIKE '%s';
-- *******
-- 문제005. 
-- 이름이 s로 시작하는 직원의 이름 출력?
-- *******
SELECT first_name
FROM EMPLOYEES
WHERE first_name LIKE 'S%';
-- *******
-- 문제006. 
-- 급여가 많은 순으로 이름,부서코드,급여 조회 
-- *******
SELECT first_name,department_id,salary
FROM EMPLOYEES
ORDER BY salary DESC;
-- *******
-- 문제007.
-- 급여가 12000 이상인 사번,이름,부서코드, 급여 조회 
-- *******
SELECT employee_id,first_name,department_id,salary
FROM EMPLOYEES
WHERE salary >= 12000;
-- *******
-- 문제008.
-- 급여가 1500이상 2500이하를 받는 직원의 사번,이름,부서코드, 급여 조회 
-- ( AND 사용 )
-- *******
SELECT employee_id,first_name,department_id,salary
FROM EMPLOYEES
WHERE salary >= 1500 AND salary <= 2500;
-- *******
-- 문제009.
-- 급여가 1500이상 2500이하를 받는 
-- 직원의 사번,이름,부서코드, 급여 조회 (BETWEEN 사용) 
-- *******
SELECT employee_id,first_name,department_id,salary
FROM EMPLOYEES
WHERE salary BETWEEN 1500 AND 2500;
-- *******
-- 문제010.
-- 2005년도에 입사한 직원의 이름과 부서코드, 
-- 입사일자를 조회
-- *******
SELECT first_name,department_id,hire_date
FROM EMPLOYEES
WHERE hire_date LIKE '05%';