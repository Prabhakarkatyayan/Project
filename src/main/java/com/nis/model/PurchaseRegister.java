package com.nis.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Purchase")
public class PurchaseRegister {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="transactionid")
	 private int transactionid;

	@Column(name="employeeid")
	private int employeeid;
	@Column(name="productid")
	private int productid;
	@Column(name="issuebyemployee")
	private String issuebyemployee;
	@Column(name="purchasedate")
	private String purchasedate;
	@Column(name="qtypurchase")
	private int qtypurchase;
	@Column(name="remark")
	private String remark;
	
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
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
	public String getIssuebyemployee() {
		return issuebyemployee;
	}
	public void setIssuebyemployee(String issuebyemployee) {
		this.issuebyemployee = issuebyemployee;
	}
	public String getPurchasedate() {
		return purchasedate;
	}
	public void setPurchasedate(String purchasedate) {
		this.purchasedate = purchasedate;
	}
	public int getQtypurchase() {
		return qtypurchase;
	}
	public void setQtypurchase(int qtypurchase) {
		this.qtypurchase = qtypurchase;
	}
	
}
