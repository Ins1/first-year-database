 --DROP commands for task_requirements

ALTER TABLE task_requirements --to alter the table to task_requirements
DROP CONSTRAINT ck_t_id; -- to drop the constraint

ALTER TABLE task_requirements --to alter the table to task_requirements
DROP CONSTRAINT ck_r_id; -- to drop the constraint

ALTER TABLE task_requirements --to alter the table to task_requirements
DROP CONSTRAINT pk_task_req_id; -- to drop the constraint

DROP TABLE task_requirements; --to drop table  task_requirements
PURGE RECYCLEBIN; -- to empty the recycle bin



 --DROP commands for requirements

ALTER TABLE requirements -- to alter the table to requirement
DROP CONSTRAINT pk_req_id; -- to drop the constraint

DROP TABLE requirements; -- to drop the table requirements
PURGE RECYCLEBIN; -- to empty the recycle bin



-- DROP commands for task_expenses

ALTER TABLE task_expenses -- to alter the table to task_expenses
DROP CONSTRAINT pk_item_id; -- to drop the constraint

ALTER TABLE task_expenses -- to alter the table to task_expenses
DROP CONSTRAINT ck_tassk_id; -- to drop the constraint

DROP TABLE task_expenses; -- to drop table  task_expenses
PURGE RECYCLEBIN; -- to empty the recycle bin



-- DROP commands for actions

ALTER TABLE actions -- to alter the table to actions
DROP CONSTRAINT ck_consult_id; -- to drop the constraint

ALTER TABLE actions -- to alter the table to actions
DROP CONSTRAINT ck_owner_fn; -- to drop the constraint

ALTER TABLE actions -- to alter the table to actions
DROP CONSTRAINT ck_owner_ln; -- to drop the constraint

ALTER TABLE actions -- to alter the table to actions
DROP CONSTRAINT ck_owner_approval; -- to drop the constraint

ALTER TABLE actions -- to alter the table to actions
DROP CONSTRAINT ck_agreed_unagreed_id; -- to drop the constraint

ALTER TABLE actions -- to alter the table to actions
DROP CONSTRAINT pk_action; -- to drop the constraint

DROP TABLE actions; -- to drop table  actions
PURGE RECYCLEBIN; -- to empty the recycle bin

-

 --DROP commands for consultations

ALTER TABLE consultations -- to alter the table to consultations
DROP CONSTRAINT ck_teamid; -- to drop the constraint

ALTER TABLE consultations -- to alter the table to consultations
DROP CONSTRAINT ck_task_phaseid; -- to drop the constraint

ALTER TABLE consultations -- to alter the table to consultations
DROP CONSTRAINT pk_consultation; -- to drop the constraint

DROP TABLE consultations; -- to drop table  consultations
PURGE RECYCLEBIN; -- to empty the recycle bin



-- DROP commands for task_phases

ALTER TABLE task_phases -- to alter the table to phases
DROP CONSTRAINT ck_phase_id; -- to drop the constraint

ALTER TABLE task_phases -- to alter the table to phases
DROP CONSTRAINT ck_taskid; -- to drop the constraint

ALTER TABLE task_phases -- to alter the table to phases
DROP CONSTRAINT pk_task_phase_id; -- to drop the constraint

DROP TABLE task_phases; -- to drop table phases
PURGE RECYCLEBIN; -- to empty the recycle bin



 --DROP commands for phases

ALTER TABLE phases
DROP CONSTRAINT ck_phase_name; -- to drop the constraint

ALTER TABLE phases
DROP CONSTRAINT pk_phase; -- to drop the constraint

DROP TABLE phases;
PURGE RECYCLEBIN; -- to empty the recycle bin



-- DROP commands for teams

ALTER TABLE  -- to alter the table to teams
DROP CONSTRAINT ck_task_id; -- to drop the constraint

ALTER TABLE teams -- to alter the table to teams
DROP CONSTRAINT ck_stafid; -- to drop the constraint

ALTER TABLE teams -- to alter the table to teams
DROP CONSTRAINT ck_tname; -- to drop the constraint

ALTER TABLE teams -- to alter the table to teams
DROP CONSTRAINT ck_tename; -- to drop the constraint

ALTER TABLE teams -- to alter the table to teams
DROP CONSTRAINT pk_team; -- to drop the constraint
DROP SEQUENCE seq_team_id; -- to drop the sequence

DROP TABLE teams; -- to drop table teams
PURGE RECYCLEBIN; -- to empty the recycle bin



-- DROP commands for tasks

ALTER TABLE tasks -- to alter the table to tasks
DROP CONSTRAINT ck_proid; -- to drop the constraint

ALTER TABLE tasks -- to alter the table to tasks
DROP CONSTRAINT ck_project_id; -- to drop the constraint

ALTER TABLE tasks -- to alter the table to tasks
DROP CONSTRAINT pk_task_id; -- to drop the constraint
DROP SEQUENCE seq_task_id; -- to drop the sequence

DROP TABLE tasks; -- to drop table tasks
PURGE RECYCLEBIN; -- to empty the recycle bin

-

-- DROP commands for skills_sets

ALTER TABLE skills_sets -- to alter the table to skills_sets
DROP CONSTRAINT ck_skill_id; -- to drop the constraint

ALTER TABLE skills_sets -- to alter the table to skills_sets
DROP CONSTRAINT ck_staff_id;-- to drop the constraint

ALTER TABLE skills_sets -- to alter the table to skills_sets
DROP CONSTRAINT pk_staff_skill_level; -- to drop the constraint

DROP TABLE skills_sets; -- to drop table skills_sets
PURGE RECYCLEBIN; -- to empty the recycle bin


-- DROP commands for skills

ALTER TABLE skills -- to alter the table to skills
DROP CONSTRAINT pk_skills; -- to drop the constraint
DROP SEQUENCE seq_skill_id;-- to drop the sequence
DROP TABLE skills;-- to drop table to skills
PURGE RECYCLEBIN; -- to empty the recycle bin



-- DROP commands for staffs

ALTER TABLE staffs -- to alter the table to staffs
DROP CONSTRAINT ck_CN; -- to drop the constraint

ALTER TABLE staffs -- to alter the table to staffs
DROP CONSTRAINT ck_fname; -- to drop the constraint

ALTER TABLE staffs-- to alter the table to staffs
DROP CONSTRAINT ck_lname; -- to drop the constraint

ALTER TABLE staffs -- to alter the table to staffs
DROP CONSTRAINT ck_enrolled; -- to drop the constraint

ALTER TABLE staffs -- to alter the table to staffs
DROP CONSTRAINT pk_staffs; -- to drop the constraint
DROP SEQUENCE seq_staff_id; -- to drop the sequence
DROP TABLE staffs; -- to drop the table staffs
PURGE RECYCLEBIN; -- to empty the recycle bin



























