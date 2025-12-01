package com.exam.seatingsystem.repository;

import com.exam.seatingsystem.model.Exam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExamRepository extends JpaRepository<Exam, Long> {
    // Example custom query:
    // Exam findByName(String name);
}