package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.*;
import com.klef.jfsd.repository.*;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private PublicServiceRepository publicserviceRepository;
	
	@Autowired
	private InfrastructureRepository infrastructureRepository;
	
	@Autowired
	private IssueRepository issueRepository;

	@Override
	public Admin checkAdminlogin(String uname, String password)
	{
		return adminRepository.checkadminlogin(uname, password);
	}

	@Override
	public List<User> ViewAllUsers() 
	{
		return userRepository.findAll();
	}

	@Override
	public String deleteUser(int uid)
	{
		userRepository.deleteById(uid);
		return "User Deleted Successfully";
	}

	@Override
	public long Usercount() 
	{
		return userRepository.count();
	}

	@Override
	public String AddPublicService(PublicService ps) 
	{
		publicserviceRepository.save(ps);
		return "Public Service Added Successfully";
	}

	@Override
	public List<PublicService> ViewAllPublicService() 
	{
		return publicserviceRepository.findAll();
	}

	@Override
	public String updatePublicservice(PublicService ps) 
	{
		PublicService existingService = publicserviceRepository.findById(ps.getId())
	            .orElseThrow(() -> new RuntimeException("Public Service not found with ID: " + ps.getId()));

	    existingService.setName(ps.getName());
	    existingService.setType(ps.getType());
	    existingService.setDescription(ps.getDescription());
	    existingService.setLocation(ps.getLocation());
	    existingService.setContact(ps.getContact());
	    existingService.setFeedback(ps.getFeedback());

	    publicserviceRepository.save(existingService);

	    return "Public Service Updated Successfully";
	}

	@Override
	public String deletePublicservice(int psid) 
	{
		publicserviceRepository.deleteById(psid);
		return "Public Service Deleted Successfully";
	}

	@Override
	public long Publicservicecount() 
	{
		return publicserviceRepository.count();
	}

	@Override
	public String AddInfrastructure(Infrastructure i) 
	{
		infrastructureRepository.save(i);
		return "Infrastructure Added Successfully";
	}

	@Override
	public List<Infrastructure> ViewAllInfrastructure() 
	{
		return infrastructureRepository.findAll();
	}

	@Override
	public String updateInfrastructure(Infrastructure i) 
	{
	    Infrastructure existingInfrastructure = infrastructureRepository.findById(i.getId())
	            .orElseThrow(() -> new RuntimeException("Infrastructure not found with ID: " + i.getId()));

	    existingInfrastructure.setName(i.getName());
	    existingInfrastructure.setType(i.getType());
	    existingInfrastructure.setStatus(i.getStatus());
	    existingInfrastructure.setDescription(i.getDescription());
	    existingInfrastructure.setFeedback(i.getFeedback());

	    infrastructureRepository.save(existingInfrastructure);

	    return "Infrastructure Updated Successfully";
	}

	@Override
	public String deleteInfrastructure(int iid) 
	{
		infrastructureRepository.deleteById(iid);
		return "Infrastructure Deleted Successfully";
	}

	@Override
	public long Infrastructurecount() 
	{
		return infrastructureRepository.count();
	}

	@Override
	public List<Issue> ViewAllIssue() 
	{
		return issueRepository.findAll();
	}

	@Override
	public String updateIssueStatus(int iid,String istatus) 
	{
		Issue existingIssue = issueRepository.findById(iid)
	            .orElseThrow(() -> new RuntimeException("Issue not found with ID: " + iid));

	    existingIssue.setStatus(istatus);

	    issueRepository.save(existingIssue);

	    return "Issue status updated successfully";
	}

	@Override
	public long Issuecount() 
	{
		return issueRepository.count();
	}

	@Override
	public PublicService getPublicServiceById(int id)
	{
		return publicserviceRepository.getById(id);
	}

	@Override
	public Infrastructure getInfrastructureById(int id) 
	{
		return infrastructureRepository.getById(id);
	}
}