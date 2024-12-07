package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.model.Infrastructure;

@Repository
public interface InfrastructureRepository extends JpaRepository<Infrastructure, Integer> {

    @Modifying
    @Transactional
    @Query("UPDATE Infrastructure i SET i.feedback = ?2 WHERE i.id = ?1")
    int updateFeedbackById(int id, int feedback);
    
    @Modifying
    @Transactional
    @Query("UPDATE Infrastructure i SET i.noofratings = i.noofratings + 1 WHERE i.id = ?1")
    int incrementNoOfRatingsById(int id);
}

