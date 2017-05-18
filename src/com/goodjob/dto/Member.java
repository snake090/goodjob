package com.goodjob.dto;

import java.sql.Date;
/**
 * @author 弘中翔太郎
 * @version 1.0 *  
 */
public class Member {
	
	private static final long serialVersionUID = 1L;
	private int member_id;
	private int member_number;
	private int company_id;
	private String name;
	private String furigana;
	private String job;
	private String phone_number;
	private String category;
	private Date entry_date;
	private int credit_amount;
	private String notes;
	private int is_deleted;
	private String company_name;
	
	/**
	 * 
	 * @return member_id int
	 */
	public int getMember_id() {
		return member_id;
	}
	/**
	 * 
	 * @param member_id int
	 */
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	/**
	 * 
	 * @return member_number int
	 */
	public int getMember_number() {
		return member_number;
	}
	/**
	 * 
	 * @param member_number int
	 */
	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}
	/**
	 * 
	 * @return company_id int
	 */
	public int getCompany_id() {
		return company_id;
	}
	/**
	 * 
	 * @param company_id int
	 */
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	/**
	 * 
	 * @return name String
	 */
	public String getName() {
		return name;
	}
	/**
	 * 
	 * @param name String
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 
	 * @return furigana String
	 */
	public String getFurigana() {
		return furigana;
	}
	/**
	 * 
	 * @param furigana String
	 */
	public void setFurigana(String furigana) {
		this.furigana = furigana;
	}
	/**
	 * 
	 * @return job String
	 */
	public String getJob() {
		return job;
	}
	/**
	 * 
	 * @param job String
	 */
	public void setJob(String job) {
		this.job = job;
	}
	/**
	 * 
	 * @return phone_number String
	 */
	public String getPhone_number() {
		return phone_number;
	}
	/**
	 * 
	 * @param phone_number String
	 */
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	/**
	 * 
	 * @return category String
	 */
	public String getCategory() {
		return category;
	}
	/**
	 * 
	 * @param category String
	 */
	public void setCategory(String category) {
		this.category = category;
	}
	/**
	 * 
	 * @return entry_date Date
	 */
	public Date getEntry_date() {
		return entry_date;
	}
	/**
	 * 
	 * @param entry_date Date
	 */
	public void setEntry_date(Date entry_date) {
		this.entry_date = entry_date;
	}
	/**
	 * 
	 * @return credit_amount int
	 */
	public int getCredit_amount() {
		return credit_amount;
	}
	/**
	 * 
	 * @param credit_amount int
	 */
	public void setCredit_amount(int credit_amount) {
		this.credit_amount = credit_amount;
	}
	/**
	 * 
	 * @return notes String
	 */
	public String getNotes() {
		return notes;
	}
	/**
	 * 
	 * @param notes String
	 */
	public void setNotes(String notes) {
		this.notes = notes;
	}
	/**
	 * 
	 * @return is_deleted int
	 */
	public int getIs_deleted() {
		return is_deleted;
	}
	/**
	 * 
	 * @param is_deleted int
	 */
	public void setIs_deleted(int is_deleted) {
		this.is_deleted = is_deleted;
	}
	/**
	 * 
	 * @return company_name String
	 */
	public String getCompany_name() {
		return company_name;
	}
	/**
	 * 
	 * @param company_name String
	 */
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	
}
