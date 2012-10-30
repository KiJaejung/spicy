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
	    name="VISITLIST_SEQUENCE",
	    sequenceName="VISITLIST_SEQUENCE",
	    allocationSize=1
)
@Table(name = "VISITLIST")
public class VisitListLog {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="VISITLIST_SEQUENCE")
	private Long id;
	private int member_id;
	@DateTimeFormat(pattern = "yyyyMMdd")
	private Date visitdate;
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
	public Date getVisitdate() {
		return visitdate;
	}
	public void setVisitdate(Date visitdate) {
		this.visitdate = visitdate;
	}
	

}
