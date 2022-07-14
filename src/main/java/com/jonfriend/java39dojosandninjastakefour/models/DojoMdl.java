package com.jonfriend.java39dojosandninjastakefour.models;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="dojo")
public class DojoMdl {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
  
    @NotBlank (message="firstName required.")
    private String firstName;
    
    @NotBlank (message="lastName required.")
    private String lastName;
    
    @Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
    
    @OneToOne(mappedBy="dojoMdl", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private NinjaMdl ninjaMdl;
    
    public DojoMdl() {
        
    }
    
    // getters and setters - start
    

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public NinjaMdl getNinjaMdl() {
		return ninjaMdl;
	}

	public void setNinjaMdl(NinjaMdl ninjaMdl) {
		this.ninjaMdl = ninjaMdl;
	}
    // getters and setters - end
    
		
// end of model
}