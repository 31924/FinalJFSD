package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Issue;

@Repository
public interface IssueRepository extends JpaRepository<Issue, Integer>
{
	@Query("SELECT i FROM Issue i WHERE i.userId = :userId")
    List<Issue> findByUserId(@Param("userId")int uid);
}
