package com.exam.seatingsystem.dto;

public class SeatingPlanDTO {
    private String name;
    private String rollNo;
    private String course;
    private int semester;
    private String roomNo;
    private int seatNo;

    public SeatingPlanDTO() {}

    public SeatingPlanDTO(String name, String rollNo, String course, int semester, String roomNo, int seatNo) {
        this.name = name;
        this.rollNo = rollNo;
        this.course = course;
        this.semester = semester;
        this.roomNo = roomNo;
        this.seatNo = seatNo;
    }

    public String getName() {
        return name;
    }

    public String getRollNo() {
        return rollNo;
    }

    public String getCourse() {
        return course;
    }

    public int getSemester() {
        return semester;
    }

    public String getRoomNo() {
        return roomNo;
    }

    public int getSeatNo() {
        return seatNo;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRollNo(String rollNo) {
        this.rollNo = rollNo;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    public void setSeatNo(int seatNo) {
        this.seatNo = seatNo;
    }
}