/*
SELECT * FROM staffs;
SELECT * FROM staffs
ORDER BY staff_firstname DESC, town DESC, post DESC;

SELECT * FROM staffs
WHERE town='Jorpati';


SELECT * FROM staffs
WHERE town LIKE 'B%';


SELECT * FROM staffs  
WHERE NOT (town='Jorpati');


SELECT * FROM staffs  
WHERE date_registered between '12-APR-2016'
AND '12-APR-2018';



SELECT * FROM staffs, teams 
WHERE staffs.staff_id = teams.staff_id;



SELECT * FROM staffs, teams, skills_sets
WHERE staffs.staff_id = teams.staff_id
AND teams.staff_id = skills_sets.staff_id;

------------------------------------------------------

SELECT * FROM skills;

SELECT * FROM skills
ORDER BY skill_id DESC, skill_type DESC, degree DESC;

SELECT * FROM skills
WHERE skill_domain='Work-Based';


SELECT * FROM skills
WHERE degree like 'B%';


SELECT * FROM skills  
WHERE NOT (skill_domain='Work-Based');


--------------------------------------------------------------

SELECT * FROM skills_sets;

SELECT * FROM skills_sets
ORDER BY skill_id DESC, staff_id DESC, staff_skill_level DESC;



----------------------------------------------------------------------

SELECT * FROM tasks;

SELECT * FROM tasks
ORDER BY task_id DESC, project_id DESC, priority DESC;



-----------------------------------------------------


SELECT * FROM teams;


SELECT * FROM teams
ORDER BY team_id DESC, team_name DESC, team_member DESC;


SELECT * FROM teams
WHERE task_name='Team Management';


SELECT * FROM teams
WHERE team_name like 'M%';


SELECT * FROM teams  
WHERE NOT (task_name='Team Management');



---------------------------------------------------------------

SELECT * FROM consultations;


SELECT * FROM consultations
ORDER BY consultation_id DESC, task_list DESC;

*/

------------------------------------------------------------------------

SELECT * FROM actions;

SELECT * FROM  task_expenses;

SELECT * FROM requirements;

SELECT * FROM task_requirements;

