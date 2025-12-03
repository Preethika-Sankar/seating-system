package com.exam.seatingsystem.repository;

import com.exam.seatingsystem.model.SeatingPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SeatingPlanRepository extends JpaRepository<SeatingPlan, Long> {
    List<SeatingPlan> findByExamId(Long examId);
}