package com.with.domain;



import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@javax.persistence.SequenceGenerator(
	    name="REPLY_SEQUENCE",
	    sequenceName="REPLY_SEQUENCE",
	    allocationSize=1
)
@Table(name="REPLY")
public class Reply implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="REPLY_SEQUENCE")
	@Column(name="ID")
	private Long id;
	@Column(name="POST_NO")
	private Integer post_no;
	@Column(name="REPLIER")
	private Integer replier;
	@Column(name="REPLIER_NAME")
	private String replier_name;
	@Column(name="REPLIER_PICTURE")
	private String replier_picture;
	@Column(name="CONTENTS")
	private String contents;
	@Column(name="REPLY_DATE")
	private java.sql.Date reply_date;
	
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
	public Integer getReplier() {
		return replier;
	}
	public void setReplier(Integer replier) {
		this.replier = replier;
	}
	public String getReplier_name() {
		return replier_name;
	}
	public void setReplier_name(String replier_name) {
		this.replier_name = replier_name;
	}
	public String getReplier_picture() {
		return replier_picture;
	}
	public void setReplier_picture(String replier_picture) {
		this.replier_picture = replier_picture;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public java.sql.Date getReply_date() {
		return reply_date;
	}
	public void setReply_date(java.sql.Date reply_date) {
		this.reply_date = reply_date;
	}
	
	
}
