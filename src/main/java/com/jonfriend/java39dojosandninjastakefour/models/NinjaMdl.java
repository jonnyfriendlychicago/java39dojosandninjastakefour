package com.jonfriend.java39dojosandninjastakefour.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="ninja")
public class NinjaMdl {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotBlank (message="ninjaNumber required.")
    private String ninjaNumber;
    
    private Date expirationDate;
    
    @NotBlank (message="issuingState required.")
    private String issuingState;
    
    @Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
    
    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="person_id")
    private DojoMdl dojoMdl;
    
    public NinjaMdl() {
        
    }
    
// getters and setters - start
    

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNinjaNumber() {
		return ninjaNumber;
	}

	public void setNinjaNumber(String ninjaNumber) {
		this.ninjaNumber = ninjaNumber;
	}

	public Date getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getIssuingState() {
		return issuingState;
	}

	public void setIssuingState(String issuingState) {
		this.issuingState = issuingState;
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

	public DojoMdl getDojoMdl() {
		return dojoMdl;
	}

	public void setDojoMdl(DojoMdl dojoMdl) {
		this.dojoMdl = dojoMdl;
	}

//	getters and setters - end
    
// end of model
}