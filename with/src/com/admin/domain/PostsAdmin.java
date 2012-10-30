package com.admin.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.with.domain.LikesCount;
import com.with.domain.Reply;



@Entity
@javax.persistence.SequenceGenerator(
	    name="POSTS_SEQUENCE",
	    sequenceName="POSTS_SEQUENCE",
	    allocationSize=1
)
@Table(name="POSTS")
public class PostsAdmin implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="POSTS_SEQUENCE")
	@Column(name="ID")
	private Long id;
	@Column(name="TYPE")
	private Integer type;
	@Column(name="POST_DATE")
	private java.sql.Date post_date;
	@Column(name="WRITER")
	private Integer writer;
	@Column(name="WRITER_PICTURE")
	private String writer_picture;
	@Column(name="OWNER", insertable=false, updatable=false)
	private Integer owner;
	@Column(name="COLUMN1")
	private String column1;
	@Column(name="COLUMN2")
	private String column2;
	@Column(name="COLUMN3")
	private String column3;
/*	@OneToMany(mappedBy="posts",fetch=FetchType.EAGER)
	private List<Reply> replies = new ArrayList<Reply>();*/
	
	@OneToOne
	@JoinColumn(name="owner")
	private MemberAdmin member;
	
	public MemberAdmin getMember() {
		return member;
	}

	public void setMember(MemberAdmin member) {
		this.member = member;
	}

	@OneToOne
	@JoinColumn(name="ID")
	private Reply reply;
	@OneToOne
	@JoinColumn(name="ID")
	private LikesCount likesCount;
	
	public LikesCount getLikesCount() {
		return likesCount;
	}

	public void setLikesCount(LikesCount likesCount) {
		this.likesCount = likesCount;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public java.sql.Date getPost_date() {
		return post_date;
	}

	public void setPost_date(java.sql.Date post_date) {
		this.post_date = post_date;
	}

	public Integer getWriter() {
		return writer;
	}

	public void setWriter(Integer writer) {
		this.writer = writer;
	}

	public String getWriter_picture() {
		return writer_picture;
	}

	public void setWriter_picture(String writer_picture) {
		this.writer_picture = writer_picture;
	}

	public Integer getOwner() {
		return owner;
	}

	public void setOwner(Integer owner) {
		this.owner = owner;
	}

	public String getColumn1() {
		return column1;
	}

	public void setColumn1(String column1) {
		column1 = column1.replaceAll("\r\n", "<br/>");
		this.column1 = column1;
	}

	public String getColumn2() {
		return column2;
	}

	public void setColumn2(String column2) {
		column2 = column2.replaceAll("\r\n", "<br/>");
		this.column2 = column2;
	}

	public String getColumn3() {
		return column3;
	}

	public void setColumn3(String column3) {
		column3 = column3.replaceAll("\r\n", "<br/>");
		this.column3 = column3;
	}

/*	public List<Reply> getReplies() {
		return replies;
	}

	public void setReplies(List<Reply> replies) {
		this.replies = replies;
	}*/

	public Reply getReply() {
		return reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}
	
}

