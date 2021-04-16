
 --INSERT FOR STAFF TABLE --

INSERT INTO staffs (staff_id, staff_firstname, staff_lastname, town, city, country, department, contact_number, email, enrolled, post, date_registered)
VALUES(seq_staff_id.NEXTVAL, 'MILAN', 'KHATIWADA', 'Jorpati', 'Kathmandu', 'Nepal', 'Management', 9813255350, 'milankhatiwada0@gmail.com', 'Y', 'Manager', '17-SEP-2017');

INSERT INTO staffs (staff_id, staff_firstname, staff_lastname, town, city, country, department, contact_number, email, enrolled, post, date_registered)
VALUES(seq_staff_id.NEXTVAL, 'INSHAN', 'K.C.', 'Jorpati', 'Kathmandu', 'Nepal', 'HR', 9810381510, 'inshankc310@gmail.com', 'Y', 'CEO', '12-APR-2016');

INSERT INTO staffs (staff_id, staff_firstname, staff_lastname, town, city, country, department, contact_number, email, enrolled, post, date_registered)
VALUES(seq_staff_id.NEXTVAL, 'ROSHAN', 'KARKI', 'Boudha', 'Kathmandu', 'Nepal', 'IT', 981182312, 'roshankarki21@gmail.com', 'Y', 'Worker', '12-APR-2018');

INSERT INTO staffs (staff_id, staff_firstname, staff_lastname, town, city, country, department, contact_number, email, enrolled, post, date_registered)
VALUES(seq_staff_id.NEXTVAL, 'PANKAJ', 'BADU', 'Chabhil', 'Kathmandu', 'Nepal', 'Sales', 9810381891, 'pankajbadu1@gmail.com', 'Y', 'Supplier', '12-JUN-2016');

INSERT INTO staffs (staff_id, staff_firstname, staff_lastname, town, city, country, department, contact_number, email, enrolled, post, date_registered)
VALUES(seq_staff_id.NEXTVAL, 'DIPESH', 'BHUSAL', 'Thamel', 'Kathmandu', 'Nepal', 'IT', 9810381217, 'dipeshbhusal@gmail.com', 'Y', 'Worker', '09-JUL-2019');


---------------------------------------------------------------------------------------------------------------------------------------------------------

-- INSERT FOR SKILLS TABLE --

INSERT INTO skills (skill_id, skill_type, skill_weight, skill_level, skill_domain, experience, degree)
VALUES(seq_skill_id.NEXTVAL, 'Mentoring', '90%', 'Semi-Pro', 'Work-Based', 'I have three years of experience on managing different software companies', 'Bachelor');

INSERT INTO skills (skill_id, skill_type, skill_weight, skill_level, skill_domain, experience, degree)
VALUES(seq_skill_id.NEXTVAL, 'Recruitment', '100%', 'Pro', 'Both', 'Working for 5 years as an HR', 'Phd');

INSERT INTO skills (skill_id, skill_type, skill_weight, skill_level, skill_domain, experience, degree)
VALUES(seq_skill_id.NEXTVAL, 'Software Development', '50%', 'Amateur', 'Work-Based', 'Beginning to develop a software', 'Bachelor Running');

INSERT INTO skills (skill_id, skill_type, skill_weight, skill_level, skill_domain, experience, degree)
VALUES(seq_skill_id.NEXTVAL, 'Software Development', '95%', 'Pro', 'Programmer', 'Working for 3 years', 'Master');

INSERT INTO skills (skill_id, skill_type, skill_weight, skill_level, skill_domain, experience)
VALUES(seq_skill_id.NEXTVAL, 'Tester', '75%', 'Semi-Pro', 'Reporting', 'Working for 1 and half years');


---------------------------------------------------------------------------------------------------------------------------------------------------------

-- INSERT FOR SKILLS_SETS TABLE --

INSERT INTO skills_sets(skill_id, staff_id, staff_skill_level)
VALUES(seq_skill_id.CURRVAL, seq_staff_id.CURRVAL, 80.25);

INSERT INTO skills_sets(skill_id, staff_id, staff_skill_level)
VALUES(seq_skill_id.CURRVAL, seq_staff_id.CURRVAL, 85.23);

INSERT INTO skills_sets(skill_id, staff_id, staff_skill_level)
VALUES(seq_skill_id.CURRVAL, seq_staff_id.CURRVAL, 53.97);

INSERT INTO skills_sets(skill_id, staff_id, staff_skill_level)
VALUES(seq_skill_id.CURRVAL, seq_staff_id.CURRVAL, 84.22);

INSERT INTO skills_sets(skill_id, staff_id, staff_skill_level)
VALUES(seq_skill_id.CURRVAL, seq_staff_id.CURRVAL, 68.22);

---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- INSERT FOR TASKS TABLE --

INSERT INTO tasks(task_id, project_id, priority, task_description, task_budget, planned_start_date, planned_end_date, planned_expenses, actual_expenes, actual_start_time, actual_end_time)
VALUES(seq_task_id.NEXTVAL, 'A1', 'Team Management', 'To allocate the budget for a project and recruite the staffs and material suggest by HR for the project', '$1,00,00', '15-APR-2020', '15-JUN-2021', 50000, 45000, '30-APR-2020', '13-JUN-2021');

INSERT INTO tasks(task_id, project_id, priority, task_description)
VALUES(seq_task_id.NEXTVAL, 'A2', 'Assign Task', 'To divide the staffs in their respective department as mentioned in skill_domain');

INSERT INTO tasks(task_id, project_id, priority, task_description, actual_start_time, actual_end_time)
VALUES(seq_task_id.NEXTVAL, 'A3', 'Learning', 'Doing internship and learning from the senior staffs', '10-MAY-2020', '23-JAN-2021');

INSERT INTO tasks(task_id, project_id, priority, task_description)
VALUES(seq_task_id.NEXTVAL, 'A4', 'Software Design', 'To lead the team and design the software which further tested by tester');

INSERT INTO tasks(task_id, project_id, priority, task_description, actual_start_time, actual_end_time)
VALUES(seq_task_id.NEXTVAL, 'A5',  'Testing', 'To test the software developed by programmer and gives some feedback after testing the software', '5-FEB-2020', '5-JUL-2021');

-----------------------------------------------------------------------------------------------------------------------------
-- INSERT FOR TEAMS TABLE --

INSERT INTO teams(team_id, team_details, task_id, task_name, team_name, team_member, team_assign, staff_id)
VALUES(seq_team_id.NEXTVAL, 'Team are divided into their respective task and some of the staffs are working being team for recruiting the material use for software development', seq_task_id.CURRVAL, 'TEAM MANAGEMENT', 'M-TEAM', 5, 'Recrustion', seq_staff_id.CURRVAL);

INSERT INTO teams(team_id, team_details, task_id, task_name, team_name, team_member, team_assign, staff_id)
VALUES(seq_team_id.NEXTVAL, 'To check whether the team are divided into their respective task and some of the staffs are working being team for recruiting the material use for software development', seq_task_id.CURRVAL, 'ASSIGN TASK', 'M-TEAM', 5, 'Assigning', seq_staff_id.CURRVAL);

INSERT INTO teams(team_id, task_id, task_name, team_name, team_member, team_assign, staff_id)
VALUES(seq_team_id.NEXTVAL, seq_task_id.CURRVAL, 'TEAM MANAGEMENT', 'I-TEAM', 10, 'Intern', seq_staff_id.CURRVAL);

INSERT INTO teams(team_id, task_id, task_name, team_name, team_member, team_assign, staff_id)
VALUES(seq_team_id.NEXTVAL, seq_task_id.CURRVAL, 'SOFTWARE DESIGN', 'S-TEAM', 8, 'Designing', seq_staff_id.CURRVAL);

INSERT INTO teams(team_id, task_id, task_name, team_name, team_member, team_assign, staff_id)
VALUES(seq_team_id.NEXTVAL, seq_task_id.CURRVAL, 'TESTING', 'T-TEAM', 5, 'Tester', seq_staff_id.CURRVAL);

-----------------------------------------------------------------------------------------------------------------------------------------------------
 --INSERT FOR PHASES TABLE --

INSERT INTO phases(phase_id)
VALUES('P001');

INSERT INTO phases(phase_id)
VALUES('P002');

INSERT INTO phases(phase_id, phase_name, time_spent)
VALUES('P003', 'LEARNING-PHASES', '23-JAN-2021');

INSERT INTO phases(phase_id, phase_name, deadline_extension, parent_phase, child_phase)
VALUES('P004', 'DESIGN-PHASES', '15-MAY-2021', 'Designing', 'Developing');

INSERT INTO phases(phase_id, phase_name, progress_detail, parent_phase, child_phase)
VALUES('P005', 'TESTING-PHASES', 'Testing', 'Test', 'Reporting');

---------------------------------------------------------------------------------------------------------------------------------------------------------------
--INSERT FOR TASK-PHASES TABLE --

INSERT INTO task_phases(task_phase_id, phase_id, task_id)
VALUES('TP01', 'P001', seq_task_id.CURRVAL);

INSERT INTO task_phases(task_phase_id, phase_id, task_id)
VALUES('TP02', 'P002', seq_task_id.CURRVAL);

INSERT INTO task_phases(task_phase_id, phase_id, task_id)
VALUES('TP03', 'P003', seq_task_id.CURRVAL);

INSERT INTO task_phases(task_phase_id, phase_id, task_id)
VALUES('TP04', 'P004', seq_task_id.CURRVAL);

INSERT INTO task_phases(task_phase_id, phase_id, task_id)
VALUES('TP05', 'P005', seq_task_id.CURRVAL);

---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- INSERT FOR CONSULTATIONS TABLE --

INSERT INTO consultations(consultation_id, team_id, address, task_phase_id, location, meeting_date, start_time, end_time, task_list)
VALUES('C101', seq_team_id.CURRVAL, 'Kathmandu', 'TP01', 'Kamalpokhari', '2-APR-2020', '12pm', '4pm', 'Managing, Recuriting, and Budget Allocation');

INSERT INTO consultations(consultation_id, team_id, address, task_phase_id, location, meeting_date, start_time, end_time, task_list)
VALUES('C102', seq_team_id.CURRVAL, 'Kathmandu', 'TP02', 'Kamalpokhari', '2-APR-2020', '12pm', '4pm', 'Assiginig and Recuriting');

INSERT INTO consultations(consultation_id, team_id, address, task_phase_id, location, meeting_date, start_time, end_time, task_list)
VALUES('C103', seq_team_id.CURRVAL, 'Kathmandu', 'TP03', 'Kamalpokhari', '2-APR-2020', '12pm', '4pm', 'Developing');

INSERT INTO consultations(consultation_id, team_id, address, task_phase_id, location, meeting_date, start_time, end_time, task_list)
VALUES('C104', seq_team_id.CURRVAL, 'Kathmandu', 'TP04', 'Kamalpokhari', '2-APR-2020', '12pm', '4pm', 'Developing and Design');

INSERT INTO consultations(consultation_id, team_id, address, task_phase_id, location, meeting_date, start_time, end_time, task_list)
VALUES('C105', seq_team_id.CURRVAL, 'Kathmandu', 'TP05', 'Kamalpokhari', '2-APR-2020', '12pm', '4pm', 'Testing and Debugging');

-------------------------------------------------------------------------------------------------------------------------------------------------
-- INSERT FOR ACTIONS TABLE --

INSERT INTO actions(action_id, owner_firstname, owner_lastname, deadline, owner_approval, consultation_id)
VALUES('A101', 'MILAN', 'KHATIWADA', '10-FEB-2020', 'Y', 'C101');

INSERT INTO actions(action_id, owner_firstname, owner_lastname, deadline, owner_approval, consultation_id)
VALUES('A102', 'MILAN', 'KHATIWADA', '10-FEB-2020', 'Y', 'C102');

INSERT INTO actions(action_id, owner_firstname, owner_lastname, deadline, owner_approval, agreed_id, consultation_id)
VALUES('A103', 'MILAN', 'KHATIWADA', '10-FEB-2020', 'Y', '103', 'C103');

INSERT INTO actions(action_id, owner_firstname, owner_lastname, deadline, owner_approval, unagreed_id, consultation_id)
VALUES('A104', 'MILAN', 'KHATIWADA', '10-FEB-2020', 'Y', '104', 'C104');

INSERT INTO actions(action_id, owner_firstname, owner_lastname, deadline, owner_approval, agreed_id, consultation_id)
VALUES('A105', 'MILAN', 'KHATIWADA', '10-FEB-2020', 'Y', '105', 'C105');

------------------------------------------------------------------------------------------------------------------------------------------------------
-- INSERT FOR TASKS-EXPENSES TABLE --

INSERT INTO task_expenses(task_id, item_id, item_name, item_description, reimburse)
VALUES(seq_task_id.CURRVAL, 'I101', 'Development-Material', 'The material like computers,internet and workspace', '$10,000');

INSERT INTO task_expenses(task_id, item_id)
VALUES(seq_task_id.CURRVAL, 'I102');

INSERT INTO task_expenses(task_id, item_id)
VALUES(seq_task_id.CURRVAL, 'I103');

INSERT INTO task_expenses(task_id, item_id)
VALUES(seq_task_id.CURRVAL, 'I104');

INSERT INTO task_expenses(task_id, item_id)
VALUES(seq_task_id.CURRVAL, 'I105');

------------------------------------------------------------------------------------------------------------------------------------
--INSERT FOR REQUIREMENTS TABLE --

INSERT INTO requirements(software_detail, requirement_id, software_cost)
VALUES('The application like microsoft office, eclispe and os windows are required for the development of the software', 'REQ001', '$10000');

INSERT INTO requirements(requirement_id)
VALUES( 'REQ002');

INSERT INTO requirements(requirement_id,  training_details, training_cost)
VALUES( 'REQ003', 'The person who join for internship have to pay some money for the phase they choose', '$1000');

INSERT INTO requirements(requirement_id)
VALUES( 'REQ004');

INSERT INTO requirements(requirement_id)
VALUES( 'REQ005');

--------------------------------------------------------------------------------------------------------------------------------------------
-- INSERT FOR TASK-REQUIREMENTS TABLE --

INSERT INTO  task_requirements(task_requirement_id, task_id, requirement_id)
VALUES('TR11', seq_task_id.CURRVAL, 'REQ001');

INSERT INTO  task_requirements(task_requirement_id, task_id, requirement_id)
VALUES('TR12', seq_task_id.CURRVAL, 'REQ002');

INSERT INTO  task_requirements(task_requirement_id, task_id, requirement_id)
VALUES('TR13', seq_task_id.CURRVAL, 'REQ003');

INSERT INTO  task_requirements(task_requirement_id, task_id, requirement_id)
VALUES('TR14', seq_task_id.CURRVAL, 'REQ004');

INSERT INTO  task_requirements(task_requirement_id, task_id, requirement_id)
VALUES('TR15', seq_task_id.CURRVAL, 'REQ005');