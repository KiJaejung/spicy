package com.admin.domain;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@javax.persistence.SequenceGenerator(
	    name="DROPLIST_SEQUENCE",
	    sequenceName="DROPLIST_SEQUENCE",
	    allocationSize=1
)
@Table(name = "DROPLIST")
public class DropListLog {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="DROPLIST_SEQUENCE")
	private Long id ;
	private int member_id ;
	private String email;
	private int dropreason;
	@DateTimeFormat(pattern = "yyyyMMdd")
	private Date dropdate;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getDropreason() {
		return dropreason;
	}
	public void setDropreason(int dropreason) {
		this.dropreason = dropreason;
	}
	public Date getDropdate() {
		return dropdate;
	}
	public void setDropdate(Date dropdate) {
		this.dropdate = dropdate;
	}
	

}
