package com.with.domain;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@javax.persistence.SequenceGenerator(
	    name="LIKES_SEQUENCE",
	    sequenceName="LIKES_SEQUENCE",
	    allocationSize=1
)
@Table(name="LIKES")
public class Likes {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="LIKES_SEQUENCE")
	private Long id;
	private Integer post_no;
	private Integer owner;
	private Integer writer;
	@DateTimeFormat(pattern = "yyyyMMdd")
	private Date likes_date;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getPost_no() {
		return post_no;
	}
	public void setPost_no(Integer post_no) {
		this.post_no = post_no;
	}
	public Integer getOwner() {
		return owner;
	}
	public void setOwner(Integer owner) {
		this.owner = owner;
	}
	public Integer getWriter() {
		return writer;
	}
	public void setWriter(Integer writer) {
		this.writer = writer;
	}
	public Date getLikes_date() {
		return likes_date;
	}
	public void setLikes_date(Date likes_date) {
		this.likes_date = likes_date;
	}
}
