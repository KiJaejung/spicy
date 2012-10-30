package com.spicy.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@javax.persistence.SequenceGenerator(
	    name="JAEJUNG_SEQ",
	    sequenceName="JAEJUNG_SEQ",
	    allocationSize=1
)
@Table(name="JAEJUNG")
public class Jaejung {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="JAEJUNG_SEQ")
	private Long id;
	private String title;
	private String contents;
	private Date j_date;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getJ_date() {
		return j_date;
	}
	public void setJ_date(Date j_date) {
		this.j_date = j_date;
	}
	
}