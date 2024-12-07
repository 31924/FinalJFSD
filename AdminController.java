package com.klef.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.*;
import com.klef.jfsd.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.List;

@Controller
public class AdminController 
{
    @Autowired
    private AdminService adminservice;
    
    @GetMapping("/")
    public ModelAndView home() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Home"); 
        return mv;
    }

    @GetMapping("/about")
    public ModelAndView about() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("About"); 
        return mv;
    }

    @GetMapping("/contactus")
    public ModelAndView contactus() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Contact"); 
        return mv;
    }

    // Admin

    @GetMapping("/adminlogin")
    public ModelAndView adminLoginPage() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("AdminLogin");
        return mv;
    }
    
    @PostMapping("/checkadminlogin")
    public ModelAndView checkAdminLogin(HttpServletRequest request) 
    {
        ModelAndView mv = new ModelAndView();

        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        Admin admin = adminservice.checkAdminlogin(auname, apwd);

        if (admin != null) 
        {
            HttpSession session = request.getSession(true); 
            session.setAttribute("admin", admin);

            mv.setViewName("redirect:/adminhome");
            return mv;
        } 
        else 
        {
            mv.setViewName("AdminLogin");
            mv.addObject("message", "Login Failed");
            return mv;
        }
    }
    
    @GetMapping("/adminlogout")
    public ModelAndView adminlogout(HttpServletRequest request) 
    {
        HttpSession session = request.getSession();
        
        session.removeAttribute("admin");
        
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("AdminLogin");
        return mv;
    }


    @GetMapping("/adminhome")
    public ModelAndView adminhome() 
    {
        ModelAndView mv = new ModelAndView();
        
        long ucount = adminservice.Usercount();
        long pscount = adminservice.Publicservicecount();
        long icount = adminservice.Infrastructurecount();
        long iscount = adminservice.Issuecount();
        
        mv.setViewName("AdminHome");
        mv.addObject("ucount", ucount);
        mv.addObject("pscount", pscount);
        mv.addObject("icount", icount);
        mv.addObject("iscount", iscount);
        
        return mv;
    }
    
    //User
    
    @GetMapping("/viewallusers")
    public ModelAndView viewallusers() 
    {
        ModelAndView mv = new ModelAndView();
        List<User> ulist = adminservice.ViewAllUsers();
        mv.setViewName("ViewAllUsers");
        mv.addObject("ulist", ulist);
        return mv;
    }

    @GetMapping("/deleteuser")
    public String deleteUser(@RequestParam("id") int userId)
    {
        adminservice.deleteUser(userId); 
        return "redirect:/viewallusers"; 
    }
    
    // Public Service

    @GetMapping("/addpublicservice")
    public ModelAndView addPublicService() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("AddPublicService");
        return mv;
    }

    @PostMapping("/addpublicservice")
    public ModelAndView addPublicService(HttpServletRequest request) 
    {
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        String contact = request.getParameter("contact");
        int feedback = 0;
        
        PublicService ps = new PublicService();
        
        ps.setName(name);
        ps.setType(type);
        ps.setDescription(description);
        ps.setLocation(location);
        ps.setContact(contact);
        ps.setFeedback(feedback);
        ps.setNoofratings(0);

        adminservice.AddPublicService(ps);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/viewallpublicservice");
        return mv;
    }

    @GetMapping("/viewallpublicservice")
    public ModelAndView viewAllPublicService() 
    {
        ModelAndView mv = new ModelAndView();
        List<PublicService> publicServiceList = adminservice.ViewAllPublicService();
        mv.setViewName("ViewAllPublicService");
        mv.addObject("publicServiceList", publicServiceList);
        return mv;
    }
    
    
    @GetMapping("/updatepublicservice")
    public ModelAndView showUpdatePublicServiceForm(@RequestParam("id") int psid) {
        ModelAndView mv = new ModelAndView();
        
        PublicService ps = adminservice.getPublicServiceById(psid);
        
        mv.addObject("publicService", ps);
        
        mv.setViewName("UpdatePublicService");
        
        return mv;
    }

    @PostMapping("/updatepublicservice")
    public ModelAndView updatePublicService(HttpServletRequest request, @RequestParam("id") int pid) 
    {
        int psid = pid;
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        String contact = request.getParameter("contact");
        int feedback = Integer.parseInt(request.getParameter("feedback"));
        int noofratings = Integer.parseInt(request.getParameter("noofratings"));

        // Create a new PublicService object with the updated data
        PublicService ps = new PublicService();
        ps.setId(psid);
        ps.setName(name);
        ps.setType(type);
        ps.setDescription(description);
        ps.setLocation(location);
        ps.setContact(contact);
        ps.setFeedback(feedback);
        ps.setNoofratings(noofratings);

        adminservice.updatePublicservice(ps);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/viewallpublicservice");
        return mv;
    }
    
    @GetMapping("/deletepublicservice")
    public ModelAndView deletepublicservice(@RequestParam("id") int psid) 
    {
        adminservice.deletePublicservice(psid);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/viewallpublicservice");
        return mv;
    }
    
    //Infrastructure

    @GetMapping("/addinfrastructure")
    public ModelAndView addInfrastructure() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("AddInfrastructure");
        return mv;
    }

    @PostMapping("/addinfrastructure")
    public ModelAndView addInfrastructure(HttpServletRequest request) 
    {
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String description = request.getParameter("description");
        String status = request.getParameter("status");
        int feedback = 0;
        
        Infrastructure i = new Infrastructure();
        
        i.setName(name);
        i.setType(type);
        i.setDescription(description);
        i.setStatus(status);
        i.setFeedback(feedback);
        i.setNoofratings(0);

        adminservice.AddInfrastructure(i);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/viewallinfrastructure");
        return mv;
    }

    @GetMapping("/viewallinfrastructure")
    public ModelAndView viewAllInfrastructure() 
    {
        ModelAndView mv = new ModelAndView();
        List<Infrastructure> infrastructures = adminservice.ViewAllInfrastructure();
        mv.setViewName("ViewAllInfrastructure");
        mv.addObject("infrastructures", infrastructures);
        return mv;
    }
    
    @GetMapping("/updateinfrastructure")
    public ModelAndView showUpdateInfrastructureForm(@RequestParam("id") int iid) {
        ModelAndView mv = new ModelAndView();
        
        // Fetch the infrastructure by its ID
        Infrastructure infrastructure = adminservice.getInfrastructureById(iid);
        
        // Add infrastructure to the model
        mv.addObject("infrastructure", infrastructure);
        
        // Set view name for updating infrastructure
        mv.setViewName("UpdateInfrastructure");
        
        return mv;
    }

    @PostMapping("/updateinfrastructure")
    public ModelAndView updateInfrastructure(HttpServletRequest request, @RequestParam("id") int id) {
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String status = request.getParameter("status");
        String description = request.getParameter("description");
        int feedback = Integer.parseInt(request.getParameter("feedback"));
        int noofratings = Integer.parseInt(request.getParameter("noofratings"));

        // Create and populate Infrastructure object with updated values
        Infrastructure infrastructure = new Infrastructure();
        infrastructure.setId(id);
        infrastructure.setName(name);
        infrastructure.setType(type);
        infrastructure.setStatus(status);
        infrastructure.setDescription(description);
        infrastructure.setFeedback(feedback);
        infrastructure.setNoofratings(noofratings);

        // Update the infrastructure in the database
        adminservice.updateInfrastructure(infrastructure);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/viewallinfrastructure"); // Redirect to view all infrastructure after update
        return mv;
    }


    @GetMapping("/deleteinfrastructure")
    public ModelAndView deleteInfrastructure(@RequestParam("id") int iid) 
    {
        adminservice.deleteInfrastructure(iid);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/viewallinfrastructure");
        return mv;
    }

    @GetMapping("/viewallissues")
    public ModelAndView viewAllIssues() 
    {
        ModelAndView mv = new ModelAndView();
        List<Issue> issues = adminservice.ViewAllIssue();
        mv.setViewName("ViewAllIssues");
        mv.addObject("issues", issues);
        return mv;
    }

    @PostMapping("/updateissuestatus")
    public ModelAndView updateIssueStatus(@RequestParam("id") int iid)
    {
        String istatus = "Completed";
        
        adminservice.updateIssueStatus(iid, istatus);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/viewallissues");
        return mv;
    }
}
