package com.exam.seatingsystem.controller;

import com.exam.seatingsystem.model.SeatingPlan;
import com.exam.seatingsystem.repository.SeatingPlanRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/plan")
public class SeatingPlanController {

    private final SeatingPlanRepository seatingPlanRepository;

    public SeatingPlanController(SeatingPlanRepository seatingPlanRepository) {
        this.seatingPlanRepository = seatingPlanRepository;
    }

    // Get seating plan by exam ID
    @GetMapping("/{examId}")
    public List<SeatingPlan> getSeatingPlanByExam(@PathVariable Long examId) {
        return seatingPlanRepository.findByExamId(examId);
    }

    // Get all seating plans
    @GetMapping
    public List<SeatingPlan> getAllSeatingPlans() {
        return seatingPlanRepository.findAll();
    }
}