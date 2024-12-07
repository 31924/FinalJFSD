package com.klef.jfsd.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.*;


@Repository
public interface UserRepository extends JpaRepository<User	, Integer>
{
	@Query("select u from User u where email=?1 and password=?2")
	public User checkuserlogin(String uemail, String upwd);
	
}
