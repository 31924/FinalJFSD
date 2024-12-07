package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.*;

public interface AdminService 
{
	//Admin Login
	public Admin checkAdminlogin(String uname ,String password);
	
	//Users
	public List<User> ViewAllUsers();
	public String deleteUser(int uid);
	public long Usercount();
	
	//PublicService
	public String AddPublicService(PublicService ps);
	public List<PublicService> ViewAllPublicService();
	public String updatePublicservice(PublicService ps);
	public String deletePublicservice(int psid);
	public long Publicservicecount();
	public PublicService getPublicServiceById(int id);
	
	//Infrastructure
	public String AddInfrastructure(Infrastructure i);
	public List<Infrastructure> ViewAllInfrastructure();
	public String updateInfrastructure(Infrastructure i);
	public String deleteInfrastructure(int iid);
	public long Infrastructurecount();
	public Infrastructure getInfrastructureById(int id);
	
	//Issues
	public List<Issue> ViewAllIssue();
	public String updateIssueStatus(int iid,String istatus);
	public long Issuecount();
}