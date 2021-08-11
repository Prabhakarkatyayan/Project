package com.nis.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="StateIndia")
public class StateIndia {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="stateid")
	int stateid;
	@Column(name="statename")
	String statename;
	public int getStateid() {
		return stateid;
	}
	public void setStateid(int stateid) {
		this.stateid = stateid;
	}
	public String getStatename() {
		return statename;
	}
	public void setStatename(String statename) {
		this.statename = statename;
	}
	
	
	
	
	

}
