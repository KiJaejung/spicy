package com.with.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@javax.persistence.SequenceGenerator(
	    name="FRIENDSTANDBY_SEQUENCE",
	    sequenceName="FRIENDSTANDBY_SEQUENCE",
	    allocationSize=1
)
@Table(name="FRIENDSTANDBY")
public class FriendStandby {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="FRIENDSTANDBY_SEQUENCE")
	private Long id;
	@Column(name="REQUEST")
	private Long request;
	@Column(name="ACCEPT")
	private Long accept;
	@Column(name="REQUEST_DATE")
	private java.sql.Date request_date;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public Long getRequest() {
		return request;
	}
	public void setRequest(Long request) {
		this.request = request;
	}
	public Long getAccept() {
		return accept;
	}
	public void setAccept(Long accept) {
		this.accept = accept;
	}
	public java.sql.Date getRequest_date() {
		return request_date;
	}
	public void setRequest_date(java.sql.Date request_date) {
		this.request_date = request_date;
	}
}
