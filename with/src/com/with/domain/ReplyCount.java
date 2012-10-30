package com.with.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="REPLYCOUNT")
public class ReplyCount {
	@Id
	@Column(name="ID")
	private Long id;
	@Column(name="POST_NO",insertable=false,updatable=false)
	private Integer post_no;
	@Column(name="COUNTS")
	private Integer counts;
	@OneToOne
	@JoinColumn(name="POST_NO")
	private Posts posts;
	
	public Posts getPosts() {
		return posts;
	}
	public void setPosts(Posts posts) {
		this.posts = posts;
	}
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
	public Integer getCounts() {
		return counts;
	}
	public void setCounts(Integer counts) {
		this.counts = counts;
	}
	
	
}
