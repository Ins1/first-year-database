CREATE TABLE staffs( -- this command is used to declare to create an table name staffs
staff_id 	VARCHAR2(10), -- create an attribute in staff with varchar2 as datatype
staff_firstame	VARCHAR2(15) NOT NULL, -- create an attribute in staff with varchar2 as datatype and is not null
staff_lastname	VARCHAR2(15) NOT NULL,-- create an attribute in staff with varchar2 as datatype and is not null
town	VARCHAR2(15), -- create an attribute in staff with varchar2 as datatype
city	VARCHAR2(20),	 -- create an attribute in staff with varchar2 as datatype
country	VARCHAR2(15),	 -- create an attribute in staff with varchar2 as datatype
department	VARCHAR2(15)	, -- create an attribute in staff with varchar2 as datatype
contact_number	VARCHAR2(15) NOT NULL,-- create an attribute in staff with varchar2 as datatype and is not null
email	VARCHAR2(25), -- create an attribute in staff with varchar2 as datatype
enrolled	VARCHAR2(5), -- create an attribute in staff with varchar2 as datatype
post	VARCHAR2(20),	 -- create an attribute in staff with varchar2 as datatype
date_registered	DATE	 -- create an attribute in staff with date as datatype
);


CREATE SEQUENCE seq_staff_id --create an sequence for staffs
INCREMENT BY 1 -- after creating a sequence 1 will be added in start value
START WITH 110 -- the sequence starts from 110
MAXVALUE 120; -- 120 is set as the maximum value
MINVALUE 110; -- 110 is set as the minimum value
CYCLE;



CREATE TABLE skills(-- this command is used to declare to create an table name staffs
skill_id 	VARCHAR2(8), -- create an attribute in skill with varchar2 as datatype
skill_type	VARCHAR2(20), -- create an attribute in skill with varchar2 as datatype
skill_weight	VARCHAR2(10),    -- create an attribute in skill with varchar2 as datatype    
skill_level	VARCHAR2(20), -- create an attribute in skill with varchar2 as datatype
skill_domain	VARCHAR2(20), -- create an attribute in skill with varchar2 as datatype
experience	VARCHAR(200), -- create an attribute in skill with varchar2 as datatype
degree	VARCHAR(50) -- create an attribute in skill with varchar2 as datatype
);

CREATE SEQUENCE seq_skill_id --create an sequence for skills
INCREMENT BY 1 -- after creating a sequence 1 will be added in start value
START WITH 001; -- the sequence starts from 110



CREATE TABLE skills_sets(-- this command is used to declare to create an table name staffs
skill_id 		VARCHAR2(8),  -- create an attribute in skills_sets with varchar2 as datatype
staff_id		VARCHAR2(8),   -- create an attribute in skills_sets with varchar2 as datatype          
staff_skill_level	NUMBER(4,2)      -- create an attribute in skills_sets with number as datatype                
); 



CREATE TABLE tasks(-- this command is used to declare to create an table name tasks
task_id 	 	VARCHAR2(7),  -- create an attribute in tasks with varchar2 as datatype      
project_id		VARCHAR2(9),     -- create an attribute in tasks with varchar2 as datatype           
priority	 	VARCHAR2(15),     -- create an attribute in tasks with varchar2 as datatype          
task_description 	VARCHAR2(200), -- create an attribute in tasks with varchar2 as datatype
task_budget	 	VARCHAR2(15), -- create an attribute in tasks with varchar2 as datatype
planned_start_date	DATE, -- create an attribute in tasks with date as datatype
planned_end_date	DATE, -- create an attribute in tasks with date as datatype
planned_expenses      	NUMBER(8,2),  -- create an attribute in tasks with number as datatype
actual_expenes	        NUMBER(8,2),  -- create an attribute in tasks with number as datatype
actual_start_time	DATE,  -- create an attribute in tasks with data as datatype
actual_end_time	DATE-- create an attribute in tasks with data as datatype
);


CREATE SEQUENCE seq_task_id --create an sequence tasks
INCREMENT BY 1 -- after creating a sequence 1 will be added in start value
START WITH 111000; -- the sequence starts from 110





CREATE TABLE teams(-- this command is used to declare to create an table name teams
team_id 	VARCHAR2(7),   -- create an attribute in teams with varchar2 as datatype             
team_details	VARCHAR2(200),   -- create an attribute in teams with varchar2 as datatype 
task_id	VARCHAR2(7),    -- create an attribute in teams with varchar2 as datatype                               
task_name	VARCHAR2(15),   -- create an attribute in teams with varchar2 as datatype 
team_name	VARCHAR2(15),   -- create an attribute in teams with varchar2 as datatype 
team_member	VARCHAR2(15),   -- create an attribute in teams with varchar2 as datatype 
team_assign	VARCHAR2(10),   -- create an attribute in teams with varchar2 as datatype 
staff_id	VARCHAR2(10)    -- create an attribute in teams with varchar2 as datatype                   
);


CREATE SEQUENCE seq_team_id  --create an sequence teams
INCREMENT BY 1  -- after creating a sequence 1 will be added in start value
START WITH 687555; -- the sequence starts from 687555




CREATE TABLE phases( -- this command is used to declare to create an table name phases
phase_id	VARCHAR2(8),   -- create an attribute in phases with varchar2 as datatype                         
phase_name	VARCHAR2(15),   -- create an attribute in phases with varchar2 as datatype
progress_detail	VARCHAR2(500),   -- create an attribute in phases with varchar2 as datatype
deadline_extension	DATE,   -- create an attribute in phases with date as datatype
time_spent	DATE,    -- create an attribute in phases with date as datatype
parent_phase	VARCHAR2(15),    -- create an attribute in phases with varchar2 as datatype
child_phase	VARCHAR2(15)    -- create an attribute in phases with varchar2 as datatype
);



CREATE TABLE task_phases( -- this command is used to declare to create an table name task_phases
task_phase_id		 VARCHAR2(13), -- create an attribute in task_phases with varchar2 as datatype
phase_id	         VARCHAR2(8),   -- create an attribute in task_phases with varchar2 as datatype             
task_id	                 VARCHAR2(7)    -- create an attribute in task_phases with varchar2 as datatype                     
);


CREATE TABLE consultations( -- this command is used to declare to create an table name consultations
consultation_id	VARCHAR2(15),  -- create an attribute in consultations with varchar2 as datatype                      
team_id 	VARCHAR2(7),  -- create an attribute in consultations with varchar2 as datatype                          
address	VARCHAR2(15), -- create an attribute in consultations with varchar2 as datatype z
task_phase_id	VARCHAR2(13), -- create an attribute in consultations with varchar2 as datatype        
location	VARCHAR2(15), -- create an attribute in consultations with varchar2 as datatype 
meeting_date	DATE,-- create an attribute in consultations with date as datatype 
start_time	VARCHAR2(5), -- create an attribute in consultations with varchar2 as datatype 
end_time	VARCHAR2(5), -- create an attribute in consultations with varchar2 as datatype 
task_list	VARCHAR2(100) -- create an attribute in consultations with varchar2 as datatype 
);



CREATE TABLE actions(-- this command is used to declare to create an table name actions
action_id	VARCHAR2(8),  -- create an attribute in actions with varchar2 as datatype                        
owner_firstname	VARCHAR2(15) NOT NULL, -- create an attribute in actions with varchar2 as datatype
owner_lastname	VARCHAR2(15) NOT NULL, -- create an attribute in actions with varchar2 as datatype
deadline	DATE, -- create an attribute in actions with date as datatype
owner_approval	VARCHAR2(14), -- create an attribute in actions with varchar2 as datatype              
agreed_id	VARCHAR2(9),  -- create an attribute in actions with varchar2 as datatype                
unagreed_id	VARCHAR2(11),  -- create an attribute in actions with varchar2 as datatype  
consultation_id	VARCHAR2(15)   -- create an attribute in actions with varchar2 as datatype         
);



CREATE TABLE task_expenses(-- this command is used to declare to create an table name task_expenses
task_id 	VARCHAR2(7),    -- create an attribute in task_expenses with varchar2 as datatype             
item_id	VARCHAR2(7),   -- create an attribute in task_expenses with varchar2 as datatype                      
item_name	VARCHAR2(20), -- create an attribute in task_expenses with varchar2 as datatype 
item_description	VARCHAR2(100),-- create an attribute in task_expenses with varchar2 as datatype 
reimburse	VARCHAR2(10) -- create an attribute in task_expenses with varchar2 as datatype 
);



CREATE TABLE requirements(-- this command is used to declare to create an table name requirements
software_detail 	VARCHAR2(200), -- create an attribute in requirements with varchar2 as datatype 
requirement_id	        VARCHAR2(15),  -- create an attribute in requirements with varchar2 as datatype                 
software_cost	        VARCHAR2(13),  -- create an attribute in requirements with varchar2 as datatype                
training_details	VARCHAR2(200), -- create an attribute in requirements with varchar2 as datatype
training_cost	        VARCHAR2(13),   -- create an attribute in requirements with varchar2 as datatype           
requirements_name	VARCHAR2(16)  -- create an attribute in requirements with varchar2 as datatype
);



CREATE TABLE task_requirements( -- this command is used to declare to create an table name task_requirements
task_requirement_id	VARCHAR2(20),  -- create an attribute in task_requirements with varchar2 as datatype               
task_id	                VARCHAR2(7), -- create an attribute in task_requirements with varchar2 as datatype    
requirement_id	        VARCHAR2(15)  -- create an attribute in task_requirements with varchar2 as datatype              
);






