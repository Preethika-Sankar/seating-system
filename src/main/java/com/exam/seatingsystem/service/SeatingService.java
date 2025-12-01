package com.exam.seatingsystem.service;

import com.exam.seatingsystem.dto.SeatingPlanDTO;
import com.exam.seatingsystem.model.Exam;         // ✅ FIXED
import com.exam.seatingsystem.model.Room;         // ✅ FIXED
import com.exam.seatingsystem.model.SeatingPlan;  // ✅ FIXED
import com.exam.seatingsystem.model.Student;      // ✅ FIXED
import com.exam.seatingsystem.repository.ExamRepository;
import com.exam.seatingsystem.repository.RoomRepository;
import com.exam.seatingsystem.repository.SeatingPlanRepository;
import com.exam.seatingsystem.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SeatingService {

    @Autowired
    private SeatingPlanRepository seatingRepo;

    @Autowired
    private StudentRepository studentRepo;

    @Autowired
    private RoomRepository roomRepo;

    @Autowired
    private ExamRepository examRepo;

    public void assignSeats(Long examId) {
        Exam exam = examRepo.findById(examId).orElseThrow();

        List<SeatingPlan> oldPlans = seatingRepo.findByExam_Id(examId);
        seatingRepo.deleteAll(oldPlans);

        List<Student> students = studentRepo.findAll();
        List<Room> rooms = roomRepo.findAll();

        int seatNo = 1;
        int roomIndex = 0;
        int roomCapacity = rooms.get(roomIndex).getCapacity();
        int roomSeatCount = 0;

        for (Student student : students) {
            if (roomSeatCount >= roomCapacity) {
                roomIndex++;
                if (roomIndex >= rooms.size()) break;
                roomCapacity = rooms.get(roomIndex).getCapacity();
                roomSeatCount = 0;
            }

            SeatingPlan plan = new SeatingPlan();
            plan.setExam(exam);
            plan.setStudent(student);
            plan.setRoom(rooms.get(roomIndex));
            plan.setSeatNo(seatNo++);

            seatingRepo.save(plan);
            roomSeatCount++;
        }
    }

    public List<SeatingPlanDTO> getSeatingPlanByExam(Long examId) {
        return seatingRepo.findByExam_Id(examId)
                .stream()
                .map(SeatingPlanDTO::fromEntity)
                .toList();
    }

    public List<SeatingPlanDTO> searchByStudentName(String name, Long examId) {
        if (name == null || examId == null) return List.of();

        return seatingRepo.findByExam_IdAndStudent_NameContainingIgnoreCase(examId, name)
                .stream()
                .map(SeatingPlanDTO::fromEntity)
                .toList();
    }
}