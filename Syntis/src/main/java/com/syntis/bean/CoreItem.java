package com.syntis.bean;

import java.io.Serializable;

public class CoreItem extends CoreBasic implements Serializable {
	private static final long serialVersionUID = 1290026042199086877L;
	
	private String dataId;
	private String name;
	private String specification;
	private String itemTypeSysid;
	// FIXME Boolean會有問題：TransientDataAccessResourceException
//	private Boolean isEnabled;
	
	public String getDataId() {
		return dataId;
	}
	public void setDataId(String dataId) {
		this.dataId = dataId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public String getItemTypeSysid() {
		return itemTypeSysid;
	}
	public void setItemTypeSysid(String itemTypeSysid) {
		this.itemTypeSysid = itemTypeSysid;
	}
//	public Boolean getIsEnabled() {
//		return isEnabled;
//	}
//	public void setIsEnabled(Boolean isEnabled) {
//		this.isEnabled = isEnabled;
//	}
	
}
