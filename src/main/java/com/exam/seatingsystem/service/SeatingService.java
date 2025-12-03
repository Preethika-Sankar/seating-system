package com.exam.seatingsystem.service;

import com.exam.seatingsystem.dto.SeatingPlanDTO;
import com.exam.seatingsystem.model.SeatingPlan;
import com.exam.seatingsystem.model.Student;
import com.exam.seatingsystem.repository.SeatingPlanRepository;
import com.exam.seatingsystem.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SeatingService {

    private final SeatingPlanRepository seatingPlanRepository;
    private final StudentRepository studentRepository;

    @Autowired
    public SeatingService(SeatingPlanRepository seatingPlanRepository, StudentRepository studentRepository) {
        this.seatingPlanRepository = seatingPlanRepository;
        this.studentRepository = studentRepository;
    }

    public List<SeatingPlanDTO> getSeatingPlanByExam(Long examId) {
        List<SeatingPlan> plans = seatingPlanRepository.findByExamId(examId);
        List<SeatingPlanDTO> dtos = new ArrayList<>();

        for (SeatingPlan plan : plans) {
            Student student = studentRepository.findById(plan.getStudentId()).orElse(null);
            if (student != null) {
                SeatingPlanDTO dto = new SeatingPlanDTO();
                dto.setName(student.getName());
                dto.setRollNo(student.getRollNo());
                dto.setCourse(student.getCourse());
                dto.setSemester(student.getSemester());
                dto.setRoomNo(plan.getRoomNo());
                dto.setSeatNo(plan.getSeatNo());
                dtos.add(dto);
            }
        }
        return dtos;
    }
}