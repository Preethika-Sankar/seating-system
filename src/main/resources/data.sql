-- =========================
-- Students
-- =========================
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(1, 'Preethika', 'A01', 'CSE', 7);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(2, 'Gomathi', 'A02', 'CSE', 7);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(3, 'Akalya', 'A03', 'AIDS', 7);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(4, 'Varsha', 'A04', 'AIDS', 7);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(5, 'Maha', 'A05', 'AIDS', 7);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(6, 'Harini', 'B01', 'CSE', 7);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(7, 'Roshini', 'B02', 'CSE', 7);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(8, 'Ganesh', 'B03', 'CSE', 2);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(9, 'Sibi', 'B04', 'AIDS', 6);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(10, 'Mukesh', 'B05', 'IT', 6);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(11, 'Naveen', 'C01', 'CSE', 6);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(12, 'Mani', 'C02', 'CSE', 4);
INSERT INTO student (id, name, roll_no, course, semester) VALUES
(13, 'Jana', 'C03', 'MECH', 8);

-- =========================
-- Exams (no date column)
-- =========================
INSERT INTO exam (id, name) VALUES (1, 'Semester 7 Final');
INSERT INTO exam (id, name) VALUES (2, 'Semester 6 Midterm');

-- =========================
-- Rooms
-- =========================
INSERT INTO room (id, room_no, capacity) VALUES (1, 'Room A', 30);
INSERT INTO room (id, room_no, capacity) VALUES (2, 'Room B', 30);
INSERT INTO room (id, room_no, capacity) VALUES (3, 'Room C', 20);

-- =========================
-- Seating Plan (exam_id + student_id + room_no + seat_no)
-- =========================
-- Exam 1 (Semester 7 Final)
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (1, 1, 1, 'Room A', 1);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (2, 1, 2, 'Room A', 2);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (3, 1, 3, 'Room B', 1);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (4, 1, 4, 'Room B', 2);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (5, 1, 5, 'Room B', 3);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (6, 1, 6, 'Room A', 3);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (7, 1, 7, 'Room A', 4);

-- Exam 2 (Semester 6 Midterm)
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (8, 2, 8, 'Room C', 1);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (9, 2, 9, 'Room C', 2);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (10, 2, 10, 'Room C', 3);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (11, 2, 11, 'Room C', 4);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (12, 2, 12, 'Room C', 5);
INSERT INTO seating_plan (id, exam_id, student_id, room_no, seat_no) VALUES (13, 2, 13, 'Room C', 6);