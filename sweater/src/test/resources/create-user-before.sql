delete from user_role;
delete from usr;

insert into usr (id, active, password, username)
values (1, true, '$2a$08$54ukgXNlloOAVnAWJNGT2eHDnul2.MMcX0Wqiqjs9Sd1QDoHJ3p22', 'user'),
       (2, true, '$2a$08$54ukgXNlloOAVnAWJNGT2eHDnul2.MMcX0Wqiqjs9Sd1QDoHJ3p22', 'mike');

insert into user_role(user_id, roles)
values (1, 'USER'), (1, 'ADMIN'), (2, 'USER');

