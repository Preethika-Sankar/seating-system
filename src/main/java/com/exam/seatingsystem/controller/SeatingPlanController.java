package com.exam.seatingsystem.controller;

import com.exam.seatingsystem.dto.SeatingPlanDTO;
import com.exam.seatingsystem.service.SeatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/plan")
public class SeatingPlanController {

    @Autowired
    private SeatingService seatingService;

    // ✅ Search by student name for a given exam
    @GetMapping("/search")
    public List<SeatingPlanDTO> searchByStudentName(
            @RequestParam String name,
            @RequestParam Long examId) {
        return seatingService.searchByStudentName(name, examId);
    }

    // ✅ Assign seats for a given exam
    @GetMapping("/assign/{examId}")
    public String assignSeats(@PathVariable Long examId) {
        seatingService.assignSeats(examId);
        return "Seats assigned for exam " + examId;
    }

    // ✅ Get full seating plan for a given exam
    @GetMapping("/{examId}")
    public List<SeatingPlanDTO> getSeatingPlan(@PathVariable Long examId) {
        return seatingService.getSeatingPlanByExam(examId);
    }
}