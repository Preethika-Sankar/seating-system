-- =========================
-- Students (no manual id)
-- =========================
INSERT INTO student (name, roll_no, course, semester) VALUES ('Preethika', 'A01', 'CSE', 7);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Gomathi', 'A02', 'CSE', 7);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Akalya', 'A03', 'AIDS', 7);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Varsha', 'A04', 'AIDS', 7);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Maha', 'A05', 'AIDS', 7);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Harini', 'B01', 'CSE', 7);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Roshini', 'B02', 'CSE', 7);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Ganesh', 'B03', 'CSE', 2);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Sibi', 'B04', 'AIDS', 6);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Mukesh', 'B05', 'IT', 6);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Naveen', 'C01', 'CSE', 6);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Mani', 'C02', 'CSE', 4);
INSERT INTO student (name, roll_no, course, semester) VALUES ('Jana', 'C03', 'MECH', 8);

-- =========================
-- Exams (no manual id, no date)
-- =========================
INSERT INTO exam (name) VALUES ('Semester 7 Final');
INSERT INTO exam (name) VALUES ('Semester 6 Midterm');

-- =========================
-- Rooms (if you have Room entity with auto id)
-- =========================
INSERT INTO room (room_no, capacity) VALUES ('Room A', 30);
INSERT INTO room (room_no, capacity) VALUES ('Room B', 30);
INSERT INTO room (room_no, capacity) VALUES ('Room C', 20);

-- =========================
-- Seating Plan (exam_id + student_id + room_no + seat_no)
-- IMPORTANT: exam_id and student_id values assume auto IDs start at 1 in insert order.
-- =========================

-- Exam 1 (Semester 7 Final)
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (1, 1, 'Room A', 1);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (1, 2, 'Room A', 2);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (1, 3, 'Room B', 1);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (1, 4, 'Room B', 2);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (1, 5, 'Room B', 3);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (1, 6, 'Room A', 3);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (1, 7, 'Room A', 4);

-- Exam 2 (Semester 6 Midterm)
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (2, 8, 'Room C', 1);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (2, 9, 'Room C', 2);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (2, 10, 'Room C', 3);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (2, 11, 'Room C', 4);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (2, 12, 'Room C', 5);
INSERT INTO seating_plan (exam_id, student_id, room_no, seat_no) VALUES (2, 13, 'Room C', 6);