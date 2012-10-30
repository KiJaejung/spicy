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
	    name="MEMBERLOG_SEQUENCE",
	    sequenceName="MEMBERLOG_SEQUENCE",
	    allocationSize=1
)
@Table(name="MEMBERLOG")
public class MemberLog {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="MEMBERLOG_SEQUENCE")
	private Long id;
	private Integer visitCount;
	private Integer signupCount;
	private Integer dropCount;
	private Integer memberCount;
	@DateTimeFormat(pattern = "yyyyMMdd")
	private Date memberLogDate;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getVisitCount() {
		return visitCount;
	}
	public void setVisitCount(Integer visitCount) {
		this.visitCount = visitCount;
	}
	public Integer getSignupCount() {
		return signupCount;
	}
	public void setSignupCount(Integer signupCount) {
		this.signupCount = signupCount;
	}
	public Integer getDropCount() {
		return dropCount;
	}
	public void setDropCount(Integer dropCount) {
		this.dropCount = dropCount;
	}
	public Integer getMemberCount() {
		return memberCount;
	}
	public void setMemberCount(Integer memberCount) {
		this.memberCount = memberCount;
	}
	public Date getMemberLogDate() {
		return memberLogDate;
	}
	public void setMemberLogDate(Date memberLogDate) {
		this.memberLogDate = memberLogDate;
	}
	
	
}
