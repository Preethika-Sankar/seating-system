package com.exam.seatingsystem.repository;

import com.exam.seatingsystem.model.SeatingPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface SeatingPlanRepository extends JpaRepository<SeatingPlan, Long> {
    List<SeatingPlan> findByExamId(Long examId);
}