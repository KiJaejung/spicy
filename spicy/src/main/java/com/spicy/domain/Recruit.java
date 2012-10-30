package com.spicy.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@javax.persistence.SequenceGenerator(
	    name="RECRUIT_SEQ",
	    sequenceName="RECRUIT_SEQ",
	    allocationSize=1
)
@Table(name="RECRUIT")
public class Recruit {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="RECRUIT_SEQ")
	Long id;
	String status;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
