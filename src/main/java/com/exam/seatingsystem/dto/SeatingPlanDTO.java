package com.exam.seatingsystem.dto;

import com.exam.seatingsystem.model.SeatingPlan;

public class SeatingPlanDTO {
    private String studentName;
    private String rollNo;
    private String course;
    private int semester;
    private String roomName;
    private int seatNo;

    // ✅ Convert entity → DTO
    public static SeatingPlanDTO fromEntity(SeatingPlan plan) {
    SeatingPlanDTO dto = new SeatingPlanDTO();
    dto.setStudentName(plan.getStudent().getName());
    dto.setRollNo(plan.getStudent().getRollNo());
    dto.setCourse(plan.getStudent().getCourse()); // ✅ use getCourse()
    dto.setSemester(plan.getStudent().getSemester());
    dto.setRoomName(plan.getRoom().getName());
    dto.setSeatNo(plan.getSeatNo());
    return dto;
}
    // ✅ Getters and setters
    public String getStudentName() { return studentName; }
    public void setStudentName(String studentName) { this.studentName = studentName; }

    public String getRollNo() { return rollNo; }
    public void setRollNo(String rollNo) { this.rollNo = rollNo; }

    public String getCourse() { return course; }
    public void setCourse(String course) { this.course = course; }

    public int getSemester() { return semester; }
    public void setSemester(int semester) { this.semester = semester; }

    public String getRoomName() { return roomName; }
    public void setRoomName(String roomName) { this.roomName = roomName; }

    public int getSeatNo() { return seatNo; }
    public void setSeatNo(int seatNo) { this.seatNo = seatNo; }
}