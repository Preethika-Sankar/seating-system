package com.exam.seatingsystem.model;

import jakarta.persistence.*;

@Entity
@Table(name = "exam")
public class Exam {

    @Id
    private Long id;

    @Column(name = "name")
    private String name;

    // Constructors
    public Exam() {}

    public Exam(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    // Getters and Setters
    public Long getId() { return id; }

    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }
}