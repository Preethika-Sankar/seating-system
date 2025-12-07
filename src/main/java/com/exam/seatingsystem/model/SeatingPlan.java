package com.exam.seatingsystem.model;

import jakarta.persistence.*;

@Entity
@Table(name = "seating_plan")
public class SeatingPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "exam_id")
    private Long examId;

    @Column(name = "student_id")
    private Long studentId;

    @Column(name = "room_no")
    private String roomNo;

    @Column(name = "seat_no")
    private int seatNo;

    public SeatingPlan() {}

    public SeatingPlan(Long examId, Long studentId, String roomNo, int seatNo) {
        this.examId = examId;
        this.studentId = studentId;
        this.roomNo = roomNo;
        this.seatNo = seatNo;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public Long getExamId() { return examId; }
    public void setExamId(Long examId) { this.examId = examId; }

    public Long getStudentId() { return studentId; }
    public void setStudentId(Long studentId) { this.studentId = studentId; }

    public String getRoomNo() { return roomNo; }
    public void setRoomNo(String roomNo) { this.roomNo = roomNo; }

    public int getSeatNo() { return seatNo; }
    public void setSeatNo(int seatNo) { this.seatNo = seatNo; }
}