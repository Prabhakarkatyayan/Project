package com.nis.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Issue")
public class IssueRegister {
 @Id
 @GeneratedValue(strategy=GenerationType.IDENTITY)
 @Column(name="transactionid")
 private int transactionid;
 @Column(name="employeeid")
 private int employeeid;
 @Column(name="productid")
 private int productid;
 @Column(name="issueto")
 private int issueto;
 @Column(name="issuedate")
 private String issuedate;
 @Column(name="qtyissue")
 private int qtyissue;
 @Column(name="remark")
 private String remark;
public int getTransactionid() {
	return transactionid;
}
public void setTransactionid(int transactionid) {
	this.transactionid = transactionid;
}
public int getEmployeeid() {
	return employeeid;
}
public void setEmployeeid(int employeeid) {
	this.employeeid = employeeid;
}
public int getProductid() {
	return productid;
}
public void setProductid(int productid) {
	this.productid = productid;
}
public int getIssueto() {
	return issueto;
}
public void setIssueto(int issueto) {
	this.issueto = issueto;
}
public String getIssuedate() {
	return issuedate;
}
public void setIssuedate(String issuedate) {
	this.issuedate = issuedate;
}
public int getQtyissue() {
	return qtyissue;
}
public void setQtyissue(int qtyissue) {
	this.qtyissue = qtyissue;
}
public String getRemark() {
	return remark;
}
public void setRemark(String remark) {
	this.remark = remark;
}
 
 
	
}
