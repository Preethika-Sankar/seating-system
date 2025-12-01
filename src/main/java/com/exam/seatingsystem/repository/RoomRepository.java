package com.exam.seatingsystem.repository;

import com.exam.seatingsystem.model.Room;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomRepository extends JpaRepository<Room, Long> {
    // Example custom query:
    // List<Room> findByCapacityGreaterThan(int capacity);
}