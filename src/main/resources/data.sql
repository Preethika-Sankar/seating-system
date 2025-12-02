-- Exams
INSERT INTO exam (id, name) VALUES (2, 'Exam 2');
INSERT INTO exam (id, name) VALUES (4, 'Exam 4');
INSERT INTO exam (id, name) VALUES (6, 'Exam 6');
INSERT INTO exam (id, name) VALUES (7, 'Exam 7');
INSERT INTO exam (id, name) VALUES (8, 'Exam 8');

-- Rooms
INSERT INTO room (id, name) VALUES (1, 'A01');
INSERT INTO room (id, name) VALUES (2, 'A02');
INSERT INTO room (id, name) VALUES (3, 'A03');
INSERT INTO room (id, name) VALUES (4, 'A04');
INSERT INTO room (id, name) VALUES (5, 'A05');
INSERT INTO room (id, name) VALUES (6, 'B01');
INSERT INTO room (id, name) VALUES (7, 'B02');
INSERT INTO room (id, name) VALUES (8, 'B03');
INSERT INTO room (id, name) VALUES (9, 'B04');
INSERT INTO room (id, name) VALUES (10, 'B05');
INSERT INTO room (id, name) VALUES (11, 'C01');
INSERT INTO room (id, name) VALUES (12, 'C02');
INSERT INTO room (id, name) VALUES (13, 'C03');

-- Students
INSERT INTO student (id, name, department) VALUES (1, 'Preethika', 'CSE');
INSERT INTO student (id, name, department) VALUES (2, 'Gomathi', 'CSE');
INSERT INTO student (id, name, department) VALUES (3, 'Akalya', 'AIDS');
INSERT INTO student (id, name, department) VALUES (4, 'Varsha', 'AIDS');
INSERT INTO student (id, name, department) VALUES (5, 'Maha', 'AIDS');
INSERT INTO student (id, name, department) VALUES (6, 'Harini', 'CSE');
INSERT INTO student (id, name, department) VALUES (7, 'Roshini', 'CSE');
INSERT INTO student (id, name, department) VALUES (8, 'Ganesh', 'CSE');
INSERT INTO student (id, name, department) VALUES (9, 'Sibi', 'AIDS');
INSERT INTO student (id, name, department) VALUES (10, 'Mukesh', 'IT');
INSERT INTO student (id, name, department) VALUES (11, 'Naveen', 'CSE');
INSERT INTO student (id, name, department) VALUES (12, 'Mani', 'CSE');
INSERT INTO student (id, name, department) VALUES (13, 'Jana', 'MECH');

-- Seating Plan
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (1, 1, 1, 7);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (2, 2, 2, 7);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (3, 3, 3, 7);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (4, 4, 4, 7);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (5, 5, 5, 7);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (6, 6, 6, 7);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (7, 7, 7, 7);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (8, 8, 8, 7);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (9, 9, 9, 6);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (10, 10, 10, 6);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (11, 11, 11, 6);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (12, 12, 12, 4);
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES (13, 13, 13, 8);