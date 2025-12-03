package com.exam.seatingsystem.controller;

import com.exam.seatingsystem.dto.SeatingPlanDTO;
import com.exam.seatingsystem.service.SeatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/plan")
public class SeatingPlanController {

    private final SeatingService seatingService;

    @Autowired
    public SeatingPlanController(SeatingService seatingService) {
        this.seatingService = seatingService;
    }

    // GET /plan/{examId}
    @GetMapping("/{examId}")
    public List<SeatingPlanDTO> getSeatingPlan(@PathVariable Long examId) {
        return seatingService.getSeatingPlanByExam(examId);
    }
}