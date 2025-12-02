-- Exams
INSERT INTO exam (id, name) VALUES 
  (2, 'Exam 2'),
  (4, 'Exam 4'),
  (6, 'Exam 6'),
  (7, 'Exam 7'),
  (8, 'Exam 8');

-- Rooms
INSERT INTO room (id, name) VALUES
  (1, 'A01'),
  (2, 'A02'),
  (3, 'A03'),
  (4, 'A04'),
  (5, 'A05'),
  (6, 'B01'),
  (7, 'B02'),
  (8, 'B03'),
  (9, 'B04'),
  (10, 'B05'),
  (11, 'C01'),
  (12, 'C02'),
  (13, 'C03');

-- Students with proper departments
INSERT INTO student (id, name, department) VALUES
  (1, 'Preethika', 'CSE'),
  (2, 'Gomathi',   'CSE'),
  (3, 'Akalya',    'AIDS'),
  (4, 'Varsha',    'AIDS'),
  (5, 'Maha',      'AIDS'),
  (6, 'Harini',    'CSE'),
  (7, 'Roshini',   'CSE'),
  (8, 'Ganesh',    'CSE'),
  (9, 'Sibi',      'AIDS'),
  (10, 'Mukesh',   'IT'),
  (11, 'Naveen',   'CSE'),
  (12, 'Mani',     'CSE'),
  (13, 'Jana',     'MECH');

-- Seating Plan (student → room → exam)
INSERT INTO seating_plan (id, student_id, room_id, exam_id) VALUES
  (1, 1, 1, 7),   -- Preethika, A01, CSE, Exam 7
  (2, 2, 2, 7),   -- Gomathi, A02, CSE, Exam 7
  (3, 3, 3, 7),   -- Akalya, A03, AIDS, Exam 7
  (4, 4, 4, 7),   -- Varsha, A04, AIDS, Exam 7
  (5, 5, 5, 7),   -- Maha, A05, AIDS, Exam 7
  (6, 6, 6, 7),   -- Harini, B01, CSE, Exam 7
  (7, 7, 7, 7),   -- Roshini, B02, CSE, Exam 7
  (8, 8, 8, 7),   -- Ganesh, B03, CSE, Exam 7
  (9, 9, 9, 6),   -- Sibi, B04, AIDS, Exam 6
  (10, 10, 10, 6),-- Mukesh, B05, IT, Exam 6
  (11, 11, 11, 6),-- Naveen, C01, CSE, Exam 6
  (12, 12, 12, 4),-- Mani, C02, CSE, Exam 4
  (13, 13, 13, 8);-- Jana, C03, MECH, Exam 8