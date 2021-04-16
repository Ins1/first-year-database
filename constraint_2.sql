
ALTER TABLE staffs -- to alter the table to staffs
ADD CONSTRAINT pk_staffs PRIMARY KEY(staff_id); -- after table is altered primary key is set to staff_id


--UNIQUE KEYS
ALTER TABLE staffs-- to alter the table to staffs
ADD CONSTRAINT ck_CN -- add an constraint
UNIQUE (contact_number, email); -- asks for the unique input from user for the attribute of contact_number and email

--UPPER CHECK FOR FIRST NAME
ALTER TABLE staffs-- to alter the table to staffs
ADD CONSTRAINT ck_fname -- add an constraint
CHECK (staff_firstame=UPPER(staff_firstame)); -- check if the staff name chas been input in upper

ALTER TABLE staffs-- to alter the table to staffs
RENAME COLUMN staff_firstame TO staff_firstname; -- an attribute staff_firstame has been changed to staff_firstname 

--UPPER CHECK FOR LAST NAME 
ALTER TABLE staffs-- to alter the table to staffs
ADD CONSTRAINT ck_lname -- add an constraint
CHECK (staff_lastname=UPPER(staff_lastname));-- check if the staff last_name chas been input in upper

ALTER TABLE staffs MODIFY -- to alter the table to staffs
(country VARCHAR2(15) DEFAULT 'UK'); -- change the varchar2(15) and set the default to UK

ALTER TABLE staffs -- to alter the table to staffs
ADD CONSTRAINT ck_enrolled-- add an constraint
CHECK (enrolled IN ('Y','N')); -- check if an staff is enrolled to an office

ALTER TABLE staffs MODIFY -- to alter the table to staffs
(enrolled VARCHAR2(5) DEFAULT 'Y');-- the varchar2 is changed and default is set to Y 

--------------------------------------------------------------------------------------------

ALTER TABLE skills -- to alter the table to skills
ADD CONSTRAINT pk_skills PRIMARY KEY(skill_id);-- after table is altered primary key is set to skill_id

ALTER TABLE skills MODIFY -- to alter the table to skills
(degree VARCHAR2(50) DEFAULT 'Bachelor');-- change the varchar2(50) and set the default to Bachelor

ALTER TABLE skills MODIFY -- to alter the table to skills
(skill_id VARCHAR2(8)); -- to modify the attribute skill_id to 8

----------------------------------------------------------------------------------------

ALTER TABLE skills_sets -- to alter the table to skills_sets
ADD CONSTRAINT pk_staff_skill_level PRIMARY KEY(staff_skill_level);-- after table is altered primary key is set to staff_skill_level

ALTER TABLE skills_sets-- to alter the table to skills_sets 
ADD CONSTRAINT ck_skill_id -- add an constraint
FOREIGN KEY (skill_id) -- set the foreign key
REFERENCES skills(skill_id); -- an reference has been given to skill_id in table skills

ALTER TABLE skills_sets -- to alter the table to skills_sets
ADD CONSTRAINT ck_staff_id -- add an constraint
FOREIGN KEY (staff_id)-- set the foreign key
REFERENCES staffs(staff_id); -- an reference has been given to staff_id in table staffs

------------------------------------------------------------------------------------------------


ALTER TABLE tasks -- to alter the table to tasks
ADD CONSTRAINT pk_task_id PRIMARY KEY(task_id); -- after table is altered primary key is set to task_id

--UPPER CHECK FOR PROJECT ID
ALTER TABLE tasks -- to alter the table to tasks
ADD CONSTRAINT ck_project_id -- add an constraint
CHECK (project_id=UPPER(project_id)); -- check if the project chas been input in upper

--UNIQUE KEYS FOR PROJECT ID
ALTER TABLE tasks-- to alter the table to tasks
ADD CONSTRAINT ck_proid -- add an constraint
UNIQUE (project_id, actual_expenes); -- asks for the unique input from user for the attribute of project_id and actual_expenses

---------------------------------------------------------------------------------------


ALTER TABLE teams -- to alter the table to teams
ADD CONSTRAINT pk_team PRIMARY KEY(team_id);  -- after table is altered primary key is set to team_id

--UPPER CHECK FOR TASK NAME
ALTER TABLE teams -- to alter the table to teams
ADD CONSTRAINT ck_tname -- add an constraint
CHECK (task_name=UPPER(task_name));  -- check if the  task_name has been input in upper


--UPPER CHECK FOR TEAM NAME
ALTER TABLE teams -- to alter the table to teams
ADD CONSTRAINT ck_tename -- add an constraint
CHECK (team_name=UPPER(team_name));  -- check if the team_name chas been input in upper

ALTER TABLE teams  -- to alter the table to teams
ADD CONSTRAINT ck_task_id -- add an constraint
FOREIGN KEY (task_id)-- set the foreign key
REFERENCES tasks(task_id);-- an reference has been given to task_id in table tasks

ALTER TABLE teams -- to alter the table to teams
ADD CONSTRAINT ck_stafid -- add an constraint
FOREIGN KEY (staff_id)-- set the foreign key
REFERENCES staffs(staff_id); -- an reference has been given to staff_id in table staffs

--------------------------------------------------------------------------------------

ALTER TABLE phases -- to alter the table to phases
ADD CONSTRAINT pk_phase PRIMARY KEY(phase_id);  -- after table is altered primary key is set to phase_id

--UPPER CHECK FOR PHASE NAME
ALTER TABLE phases -- to alter the table to phases
ADD CONSTRAINT ck_phase_name -- add an constraint
CHECK (phase_name=UPPER(phase_name)); -- check if the phase_name chas been input in uppe

ALTER TABLE phases MODIFY -- to alter the table to phases
(progress_detail VARCHAR2(500) DEFAULT 'Development');  -- the varchar2 is changed and default is set to Development

------------------------------------------------------------------------------------
ALTER TABLE task_phases -- to alter the table to task_phases
ADD CONSTRAINT pk_task_phase_id PRIMARY KEY(task_phase_id); -- after table is altered primary key is set to task_phase_id

ALTER TABLE task_phases -- to alter the table to task_phases
ADD CONSTRAINT ck_phase_id -- add an constraint
FOREIGN KEY (phase_id) -- set the foreign key
REFERENCES phases(phase_id); -- an reference has been given to phase_id in table phases

ALTER TABLE task_phases -- to alter the table to task_phases
ADD CONSTRAINT ck_taskid -- add an constraint
FOREIGN KEY (task_id) -- set the foreign key
REFERENCES tasks(task_id); -- an reference has been given to task_id in table tasks

----------------------------------------------------------------------------------------

ALTER TABLE consultations -- to alter the table to consultation
ADD CONSTRAINT pk_consultation PRIMARY KEY(consultation_id); -- after table is altered primary key is set to consultation_id

ALTER TABLE consultations  --- to alter the table to consultation
ADD CONSTRAINT ck_teamid -- add an constraint
FOREIGN KEY (team_id) -- set the foreign key
REFERENCES teams(team_id); -- an reference has been given to team_id in table teams

ALTER TABLE consultations -- to alter the table to consultation
ADD CONSTRAINT ck_task_phaseid -- add an constraint
FOREIGN KEY (task_phase_id) -- set the foreign key
REFERENCES task_phases(task_phase_id); -- an reference has been given to task_phase_id in table task_phases


-----------------------------------------------------------------------------------------------

ALTER TABLE actions -- to alter the table to actions
ADD CONSTRAINT pk_action PRIMARY KEY(action_id); -- after table is altered primary key is set to action_id

--UPPER CHECK FOR OWNER_FN
ALTER TABLE actions -- to alter the table to actions
ADD CONSTRAINT ck_owner_fn -- add an constraint
CHECK (owner_firstname=UPPER(owner_firstname)); -- check if the  owner_firstname has been input in upper

--UPPER CHECK FOR OWNER_LN
ALTER TABLE actions -- to alter the table to actions
ADD CONSTRAINT ck_owner_ln -- add an constraint
CHECK (owner_lastname=UPPER(owner_lastname)); -- check if the  owner_last has been input in upper

ALTER TABLE actions -- to alter the table to actions
ADD CONSTRAINT ck_owner_approval -- add an constraint
CHECK (owner_approval IN ('Y','N')); -- check the answer in y or n

ALTER TABLE actions MODIFY -- to alter the table to actions
(owner_approval VARCHAR2(5) DEFAULT 'Y'); -- set the default to Y

--UNIQUE KEYS FOR AGREED_UNAGREED_ID
ALTER TABLE actions -- to alter the table to actions
ADD CONSTRAINT ck_agreed_unagreed_id -- add an constraint
UNIQUE (agreed_id, unagreed_id);-- asks for the unique input from user for the attribute of agreeded and unagreed_id

ALTER TABLE actions -- to alter the table to actions
ADD CONSTRAINT ck_consult_id -- add an constraint
FOREIGN KEY (consultation_id) -- set the foreign key
REFERENCES consultations(consultation_id);-- an reference has been given to consultation_id in table consultations

------------------------------------------------------------------------------------------------


ALTER TABLE task_expenses -- to alter the table to task_expenses
ADD CONSTRAINT pk_item_id PRIMARY KEY(item_id);  -- after table is altered primary key is set to item_id

ALTER TABLE task_expenses -- to alter the table to task_expenses
ADD CONSTRAINT ck_tassk_id -- add an constraint
FOREIGN KEY (task_id) -- set the foreign key
REFERENCES tasks(task_id);-- an reference has been given to task_id in table tasks

------------------------------------------------------------------------------------------------------

ALTER TABLE requirements -- to alter the table to requirements
ADD CONSTRAINT pk_req_id PRIMARY KEY(requirement_id); -- after table is altered primary key is set to requirement_id

--UPPER CHECK FOR REQUIREMNENT_ID
ALTER TABLE requirements -- to alter the table to requirements
ADD CONSTRAINT ck_req_id -- add an constraint
CHECK (requirements_name=UPPER(requirements_name));

-----------------------------------------------------------------------------------------------


ALTER TABLE task_requirements --to alter the table to task_requirements
ADD CONSTRAINT pk_task_req_id PRIMARY KEY(task_requirement_id); 

ALTER TABLE task_requirements --to alter the table to task_requirements
ADD CONSTRAINT ck_t_id -- add an constraint
FOREIGN KEY (task_id)-- set the foreign key
REFERENCES tasks(task_id); -- an reference has been given to task_id in table tasks

ALTER TABLE task_requirements --to alter the table to task_requirements
ADD CONSTRAINT ck_r_id -- add an constraint
FOREIGN KEY (requirement_id)-- set the foreign key
REFERENCES requirements(requirement_id);-- an reference has been given to requirement_id in table requirements

-------------------------------------------------------------------------------






