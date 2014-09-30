package com.syntis.bean;

import java.io.Serializable;

public class CoreBasic implements Serializable {
	private static final long serialVersionUID = 3458835341862538117L;
	protected String sysid;
	protected String operator;
	protected String operationdate;
	protected String creator;
	protected String creationdate;
	protected String remark;
	
	public String getSysid() {
		return sysid;
	}
	public void setSysid(String sysid) {
		this.sysid = sysid;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public String getOperationdate() {
		return operationdate;
	}
	public void setOperationdate(String operationdate) {
		this.operationdate = operationdate;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public String getCreationdate() {
		return creationdate;
	}
	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
