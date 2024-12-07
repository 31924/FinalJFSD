package com.klef.jfsd.model;

import jakarta.persistence.*;

@Entity
@Table(name = "public_service")
public class PublicService {
  
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "type", nullable = false)
    private String type;

    @Column(name = "description")
    private String description;

    @Column(name = "location")
    private String location;

    @Column(name = "contact")
    private String contact;

    @Column(name = "feedback")
    private int feedback;
    
    @Column(name = "noofratings" )
    private int noofratings;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public int getFeedback() {
        return feedback;
    }

    public void setFeedback(int feedback) {
        this.feedback = feedback;
    }

	public int getNoofratings() {
		return noofratings;
	}

	public void setNoofratings(int noofratings) {
		this.noofratings = noofratings;
	}
}
