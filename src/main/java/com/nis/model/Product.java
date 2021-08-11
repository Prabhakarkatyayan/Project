package com.nis.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {

	@Id
	@Column(name="productid")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int productid;
	@Column
	private int employeeid;
	@Column
	private String productname;
	@Column
	private String batchno;
	@Column
	private String productrate;
	@Column
	private String productstock;
	@Column
	private String picture;
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public int getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getBatchno() {
		return batchno;
	}
	public void setBatchno(String batchno) {
		this.batchno = batchno;
	}
	public String getProductrate() {
		return productrate;
	}
	public void setProductrate(String productrate) {
		this.productrate = productrate;
	}
	public String getProductstock() {
		return productstock;
	}
	public void setProductstock(String productstock) {
		this.productstock = productstock;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	

}
