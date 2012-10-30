package com.admin.domain;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@javax.persistence.SequenceGenerator(
	    name="MEMBER_SEQUENCE",
	    sequenceName="MEMBER_SEQUENCE",
	    allocationSize=1
)
@Table(name="MEMBER")
public class MemberAdmin {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="MEMBER_SEQUENCE")

	private Long id;
	private String email;
	private String password;
	private String name;
	private String picture;
	private String introduce;
	private String homepage;
	private int region;
	private String school;
	@DateTimeFormat(pattern = "yyyyMMdd")
	private Date birth;
	@DateTimeFormat(pattern = "yyyyMMdd")
	private Date signup_date;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public int getRegion() {
		return region;
	}
	public void setRegion(int region) {
		this.region = region;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Date getSignup_date() {
		return signup_date;
	}
	public void setSignup_date(Date signup_date) {
		this.signup_date = signup_date;
	}
}
