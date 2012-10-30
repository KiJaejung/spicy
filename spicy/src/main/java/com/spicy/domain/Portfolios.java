package com.spicy.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@javax.persistence.SequenceGenerator(
	    name="PORTFOLIOS_SEQ",
	    sequenceName="PORTFOLIOS_SEQ",
	    allocationSize=1
)
@Table(name="PORTFOLIOS")
public class Portfolios {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="PORTFOLIOS_SEQ")
	private Long id;
	private String title;
	private String contents;
	private Date p_date;
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
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
}
