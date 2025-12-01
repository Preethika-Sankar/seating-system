package com.exam.seatingsystem.repository;

import com.exam.seatingsystem.model.SeatingPlan; // ✅ FIXED
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface SeatingPlanRepository extends JpaRepository<SeatingPlan, Long> {

    List<SeatingPlan> findByExam_IdAndStudent_NameContainingIgnoreCase(Long examId, String name);

    List<SeatingPlan> findByExam_Id(Long examId);
}