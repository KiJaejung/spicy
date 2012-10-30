package com.with.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@javax.persistence.SequenceGenerator(
	    name="FRIEND_SEQUENCE",
	    sequenceName="FRIEND_SEQUENCE",
	    allocationSize=1
)
@Table(name="FRIEND")
public class Friend  implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="FRIEND_SEQUENCE")
	private Long id;
	@Column(name="REQUEST")
	private Integer request;
	@Column(name="ACCEPT")
	private Integer accept;
	@Column(name="FRIENDSHIP")
	private Integer friendship;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getRequest() {
		return request;
	}
	public void setRequest(Integer request) {
		this.request = request;
	}
	public Integer getAccept() {
		return accept;
	}
	public void setAccept(Integer accept) {
		this.accept = accept;
	}
	public Integer getFriendship() {
		return friendship;
	}
	public void setFriendship(Integer friendship) {
		this.friendship = friendship;
	}
	
	
}
