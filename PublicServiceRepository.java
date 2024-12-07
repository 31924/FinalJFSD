package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.model.PublicService;

@Repository
public interface PublicServiceRepository extends JpaRepository<PublicService, Integer> 
{
	@Modifying
    @Transactional
    @Query("UPDATE PublicService ps SET ps.feedback = ?2 WHERE ps.id = ?1")
    int updateFeedbackById(int id, int feedback);
	
	@Modifying
    @Transactional
    @Query("UPDATE PublicService ps SET ps.noofratings = ps.noofratings + 1 WHERE ps.id = ?1")
    int incrementNoOfRatingsById(int id);
}
