package com.spicy.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@javax.persistence.SequenceGenerator(
	    name="DAHOON_SEQ",
	    sequenceName="DAHOON_SEQ",
	    allocationSize=1
)
@Table(name="DAHOON")
public class Dahoon {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="DAHOON_SEQ")
	private Long id;
	private String title;
	private String contents;
	private Date d_date;
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
	public Date getD_date() {
		return d_date;
	}
	public void setD_date(Date d_date) {
		this.d_date = d_date;
	}
}