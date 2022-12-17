package com.studentdatabase;

public class StudentInfo {
	private String stId;
	private String stName;
	private Integer stYear;
	private Double stCgp;
	public StudentInfo(String stId,String stName,Integer stYear, Double stCgp)
	{
		this.stId=stId;
		this.stName=stName;
		this.stYear = stYear;
		this.stCgp = stCgp;
		
	}
	public StudentInfo() {
		// TODO Auto-generated constructor stub
	}
	public String getStId() {
		return stId;
	}
	public void setStId(String stId) {
		this.stId = stId;
	}
	public String getStName() {
		return stName;
	}
	public void setStName(String stName) {
		this.stName = stName;
	}
	public Integer getStYear() {
		return stYear;
	}
	public void setStYear(Integer stYear) {
		this.stYear = stYear;
	}
	public Double getStCgp() {
		return stCgp;
	}
	public void setStCgp(Double stCgp) {
		this.stCgp = stCgp;
	}
	
}
