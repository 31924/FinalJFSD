package com.klef.jfsd.controller;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.Infrastructure;
import com.klef.jfsd.model.Issue;
import com.klef.jfsd.model.PublicService;
import com.klef.jfsd.model.User;
import com.klef.jfsd.service.AdminService;
import com.klef.jfsd.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController 
{
	@Autowired
	private UserService userservice;
	
	@Autowired
    private AdminService adminservice;
	
	@GetMapping("/userlogin")
	public ModelAndView userLoginForm() 
	{
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("UserLogin");
	    return mv;
	}
	
	@GetMapping("userreg")
	public ModelAndView userRegistrationForm() 
	{
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("UserRegistration");
	    return mv;
	}

	@PostMapping("insertuser")
	public ModelAndView insertUser(HttpServletRequest request,@RequestParam("profilephoto") MultipartFile file) throws Exception
	{
	    String name = request.getParameter("uname");
	    String gender = request.getParameter("ugender");
	    String dob = request.getParameter("udob");
	    String location = request.getParameter("ulocation");
	    String email = request.getParameter("uemail");
	    String password = request.getParameter("upwd");
	    String contact = request.getParameter("ucontact");
	    
	     byte[] bytes = file.getBytes();
		 Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
	    
	    User user = new User();
	    user.setName(name);
	    user.setGender(gender);
	    user.setDateofbirth(dob);
	    user.setLocation(location);
	    user.setEmail(email);
	    user.setPassword(password);
	    user.setContact(contact);
	    user.setPhoto(blob);
	    
	    String msg = userservice.UserRegistration(user);
	    
	    ModelAndView mv = new ModelAndView("UserLogin");
	    mv.addObject("message", msg);
	    
	    return mv;
	}
	
	@GetMapping("displayprofilephoto")
	public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int uid) throws Exception
	{
	  User u =  userservice.getUserById(uid);
	  byte [] imageBytes = null;
	  imageBytes = u.getPhoto().getBytes(1,(int) u.getPhoto().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  
	}
	
	@PostMapping("/checkuserlogin")
	public ModelAndView checkUserLogin(HttpServletRequest request) 
	{
	    ModelAndView mv = new ModelAndView();

	    String email = request.getParameter("uemail");
	    String password = request.getParameter("upwd");

	    User user = userservice.checkUserlogin(email, password);

	    if (user != null) 
	    {
	        HttpSession session = request.getSession(true); 
	        session.setAttribute("user", user);

	        mv.setViewName("redirect:/userhome");
	        return mv;
	    } 
	    else 
	    {
	        mv.setViewName("UserLogin");
	        mv.addObject("message", "Login Failed");
	        return mv;
	    }
	}
	
	@GetMapping("/userlogout")
    public ModelAndView userlogout(HttpServletRequest request) 
    {
        HttpSession session = request.getSession();
        
        session.removeAttribute("user");
        
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("UserLogin");
        return mv;
    }
	
	@GetMapping("/userhome")
	public ModelAndView emphome() 
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("UserHome");
		return mv;
	}
	
	@GetMapping("/publicservices")
    public ModelAndView viewAllPublicService() 
    {
        ModelAndView mv = new ModelAndView();
        List<PublicService> publicServiceList = adminservice.ViewAllPublicService();
        mv.setViewName("RatePublicService");
        mv.addObject("publicServiceList", publicServiceList);
        return mv;
    }
	@GetMapping("/infrastructures")
    public ModelAndView viewAllInfrastructure() 
    {
        ModelAndView mv = new ModelAndView();
        List<Infrastructure> infrastructures = adminservice.ViewAllInfrastructure();
        mv.setViewName("RateInfrastructure");
        mv.addObject("infrastructures", infrastructures);
        return mv;
    }
	@GetMapping("/userprofile")
	public ModelAndView userprofile(@RequestParam("id") int uid)
	{
		ModelAndView mv = new ModelAndView();
		User u = userservice.getUserById(uid);
		mv.setViewName("UserProfile");
		mv.addObject("user", u);
		return mv;
	}
	@GetMapping("/updateprofile")
	public ModelAndView updateprofile(@RequestParam("id") int uid)
	{
		ModelAndView mv = new ModelAndView();
		User u = userservice.getUserById(uid);
		mv.setViewName("UpdateProfile");
		mv.addObject("user", u);
		return mv;
	}
	
	@PostMapping("/update")
	public ModelAndView update(HttpServletRequest request,@RequestParam("profilephoto") MultipartFile file, @RequestParam("id") int uid) throws Exception
	{
		int id = uid;
	    String name = request.getParameter("uname");
	    String gender = request.getParameter("ugender");
	    String dob = request.getParameter("udob");
	    String location = request.getParameter("ulocation");
	    String email = request.getParameter("uemail");
	    String password = request.getParameter("upwd");
	    String contact = request.getParameter("ucontact");
	    
	     byte[] bytes = file.getBytes();
		 Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
	    
	    User user = new User();
	    user.setId(id);
	    user.setName(name);
	    user.setGender(gender);
	    user.setDateofbirth(dob);
	    user.setLocation(location);
	    user.setEmail(email);
	    user.setPassword(password);
	    user.setContact(contact);
	    user.setPhoto(blob);
	    
	    String msg = userservice.UserRegistration(user);
	    
	    ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/userhome");
        return mv;
	}
	
	@GetMapping("/addissue")
	public ModelAndView addissue()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("AddIssue");
		return mv;
	}
	
	@PostMapping("/addis")
	public ModelAndView addis(HttpServletRequest request, @RequestParam("id") int uid) 
	{
	    int userId = uid;
	    String category = request.getParameter("category");
	    String relatedTo = request.getParameter("relatedTo");
	    String description = request.getParameter("description");
	    String status = "Pending";

	    Issue issue = new Issue();
	    issue.setUserId(userId);
	    issue.setCategory(category);
	    issue.setRelatedTo(relatedTo);
	    issue.setDescription(description);
	    issue.setStatus(status);

	   
	    userservice.AddIssue(issue); 

	    ModelAndView mv = new ModelAndView();
	    
	    mv.setViewName("redirect:/addissue");
	    
	    return mv;
	}
	
	@GetMapping("/myissues")
	public ModelAndView myissues(@RequestParam("id") int uid)
	{
		ModelAndView mv = new ModelAndView();
		List<Issue> issues = userservice.ViewIssueById(uid);
		mv.setViewName("MyIssues");
        mv.addObject("issues", issues);
        return mv;
	}
	@PostMapping("/deleteIssue")
	public ModelAndView deleteissue(@RequestParam("id") int uid)
	{
		ModelAndView mv = new ModelAndView();
		userservice.deleteIssue(uid);
		mv.setViewName("redirect:/addissue");
		return mv;
	}
	@PostMapping("/ratePublicService")
	public ModelAndView publicServiceRating(HttpServletRequest request) 
	{
		int infrastructureId = Integer.parseInt(request.getParameter("id"));
	    int oldRating = Integer.parseInt(request.getParameter("feedback"));
	    int noOfRatings = Integer.parseInt(request.getParameter("noofratings"));
	    int givenRating = Integer.parseInt(request.getParameter("rating"));

	    int newRating = ((oldRating * noOfRatings) + givenRating) / (noOfRatings + 1);

	    userservice.RatePublicService(infrastructureId, newRating);

	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("redirect:/publicservices");
	    return mv;
	}

	@PostMapping("/rateInfrastructure")
	public ModelAndView rateInfrastructure(HttpServletRequest request) 
	{
	    int infrastructureId = Integer.parseInt(request.getParameter("id"));
	    int oldRating = Integer.parseInt(request.getParameter("feedback"));
	    int noOfRatings = Integer.parseInt(request.getParameter("noofratings"));
	    int givenRating = Integer.parseInt(request.getParameter("rating"));

	    int newRating = ((oldRating * noOfRatings) + givenRating) / (noOfRatings + 1);

	    userservice.RateInfrastructure(infrastructureId, newRating);

	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("redirect:/infrastructures");
	    return mv;
	}

}
