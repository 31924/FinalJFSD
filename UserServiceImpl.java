package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.*;
import com.klef.jfsd.repository.*;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private IssueRepository issueRepository;
	
	@Autowired
	private InfrastructureRepository infrastructureRepository;
	
	@Autowired
	private PublicServiceRepository publicserviceRepository;

	@Override
	public String UserRegistration(User user)
	{
		userRepository.save(user);
		return "User Registered Successfully";
	}

	@Override
	public User checkUserlogin(String email, String password) 
	{
		return userRepository.checkuserlogin(email, password);
	}

	@Override
	public String updateUser(User u) 
	{
	    User existingUser = userRepository.findById(u.getId())
	            .orElseThrow(() -> new RuntimeException("User not found with ID: " + u.getId()));

	    existingUser.setName(u.getName());
	    existingUser.setGender(u.getGender());
	    existingUser.setDateofbirth(u.getDateofbirth());
	    existingUser.setEmail(u.getEmail());
	    existingUser.setPassword(u.getPassword());
	    existingUser.setLocation(u.getLocation());
	    existingUser.setContact(u.getContact());
	    existingUser.setPhoto(u.getPhoto());

	    userRepository.save(existingUser);

	    return "User updated successfully";
	}

	@Override
	public String AddIssue(Issue i) 
	{
		issueRepository.save(i);
		return"Issue Added Successfully";
	}

	@Override
	public String deleteIssue(int iid)
	{
		issueRepository.deleteById(iid);
		return "Issue Deleted Successfully";
	}

	@Override
	public User getUserById(int id) 
	{
		return userRepository.getById(id);
	}

	@Override
	public List<Issue> ViewIssueById(int uid) 
	{
		return issueRepository.findByUserId(uid);
	}

	@Override
	public String RateInfrastructure(int id, int rating) 
	{
		infrastructureRepository.updateFeedbackById(id, rating);
		infrastructureRepository.incrementNoOfRatingsById(id);
		return "Rated Successfully";
	}

	@Override
	public String RatePublicService(int id, int rating) 
	{
		publicserviceRepository.updateFeedbackById(id, rating);
		publicserviceRepository.incrementNoOfRatingsById(id);
		return "Rated Successfully";
	}
}
