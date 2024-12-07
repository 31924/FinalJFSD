package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.*;

public interface UserService 
{
	//User
	public String UserRegistration(User user);
	public User checkUserlogin(String email ,String password);
	public String updateUser(User u);
	public User getUserById(int id);
	
	//Issue
	public String AddIssue(Issue i);
	public List<Issue> ViewIssueById(int uid);
	public String deleteIssue(int iid);
	
	//Ratings
	public String RateInfrastructure(int id, int rating);
	public String RatePublicService(int id, int rating);
}
