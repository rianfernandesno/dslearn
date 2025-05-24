INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);

INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2025-11-20T03:00:00', TIMESTAMP WITH TIME ZONE '2026-11-20T03:00:00', 1);
INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2025-12-20T03:00:00', TIMESTAMP WITH TIME ZONE '2026-12-20T03:00:00', 1);


INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES('Trilha HTML', 'Trilha principal do curso', 1,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 1)
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES('Forum', 'Tire suas duvidas', 2,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 2, 1)
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES('Lives', 'Lives exclusivas para a turma', 3,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 0, 1)

INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capitulo 1', 'Neste capitulo vamos começar', 1,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, null)
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capitulo 2', 'Neste capitulo vamos continuar', 2,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 1)
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capitulo 3', 'Neste capitulo vamos finalizar', 3,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 1, 2)

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES(1,1, TIMESTAMP WITH TIME ZONE '2025-11-20T13:00:00', null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES(2,1, TIMESTAMP WITH TIME ZONE '2025-11-20T13:00:00', null, true, false);

INSERT INTO tb_lesson(title, position, section_id) VALUES('Aula 1 do capitulo 1', 1, 1);
INSERT INTO tb_content(id,text_Content, video_Uri) VALUES(1,'Material de apoio: abc', 'https://www.youtube.com/watch?v=9q71ywEqJjA');

INSERT INTO tb_lesson(title, position, section_id) VALUES('Aula 2 do capitulo 1', 2, 1);
INSERT INTO tb_content(id,text_Content, video_Uri) VALUES(2,'', 'https://www.youtube.com/watch?v=9q71ywEqJjA');

INSERT INTO tb_lesson(title, position, section_id) VALUES('Aula 3 do capitulo 1', 3, 1);
INSERT INTO tb_content(id,text_Content, video_Uri) VALUES(3,'', 'https://www.youtube.com/watch?v=9q71ywEqJjA');

INSERT INTO tb_lesson(title, position, section_id) VALUES('Tarefa do capitulo 1', 4, 1);
INSERT INTO tb_task(id, description, question_Count, approval_Count, weight, due_Date) VALUES(4,'Fazer trabalho', 5, 4, 1.0,TIMESTAMP WITH TIME ZONE '2025-11-25T13:00:00' );

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (1,1,1)
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (2,1,1)

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/rianfernandesno/dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);


INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);