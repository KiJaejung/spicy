package com.admin.domain;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name ="WRITTENLOG")
public class WrittenLog {
	@Id
	private int id;
	private int textcount;
	private int quotecount;
	private int linkcount;
	private int photocount;
	private int moviecount;
	private int musiccount;
	private int totalcount;
	private int replycount;
	
	@DateTimeFormat(pattern = "yyyyMMdd")
	private Date writtenlogdate;

	public int getId() {	return id;	}
	public void setId(int id) {	this.id = id;}
	
	public int getTextcount() {	return textcount;	}
	public void setTextcount(int textcount) {this.textcount = textcount;}

	public int getQuotecount() {	return quotecount;}
	public void setQuotecount(int quotecount) {	this.quotecount = quotecount;	}

	public int getLinkcount() {	return linkcount;	}
	public void setLinkcount(int linkcount) {this.linkcount = linkcount;	}

	public int getPhotocount() {return photocount;}
	public void setPhotocount(int photocount) {	this.photocount = photocount;}

	public int getMoviecount() {return moviecount;}
	public void setMoviecount(int moviecount) {	this.moviecount = moviecount;}
	
	public int getMusiccount() {return musiccount;}
	public void setMusiccount(int musiccount) {	this.musiccount = musiccount;}
	

	public int getTotalcount() {return totalcount;}
	public void setTotalcount(int totalcount) {	this.totalcount = totalcount;}

	public int getReplycount() {return replycount;}
	public void setReplycount(int replycount) {	this.replycount = replycount;}

	public Date getWrittenlogdate() {	return writtenlogdate;}
	public void setWrittenlogdate(Date writtenlogdate) {this.writtenlogdate = writtenlogdate;	}
}
