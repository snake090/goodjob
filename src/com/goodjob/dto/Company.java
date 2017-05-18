/**
  * 協賛企業のDTO
  * @author NABAE
  * @version 0.1
*/

package com.goodjob.dto;

public class Company {
	private int company_id;
	private String company_name;
	private String company_furigana;
	private String department;
	private String manager_name;
	private String manager_furigana;
	private String manager_phone_number;
	private String billing_zip_code;
	private String billing_address;
	private String billing_phone_number;
	private int salary_date;
	private String bank_name;
	private String branch_name;
	private int account_type;
	private String account_number;
	private int is_deleted;

	public Company(){}
	/**
	 * 企業名を取得する
	 * @return 企業名
	 */
	public String getCompany_name() {
		return company_name;
	}
	/**
	 * 企業名を設定する
	 * @param company_name 企業名
	 */
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	/**
	 * 会社名のフリガナを取得する
	 * @return 企業名のフリガナ
	 */
	public String getCompany_furigana() {
		return company_furigana;
	}
	/**
	 * 企業名のフリガナを設定する
	 * @param compant_furigana
	 */
	public void setCompany_furigana(String compant_furigana) {
		this.company_furigana = compant_furigana;
	}
	/**
	 * 担当者の所属を取得する
	 */
	public String getDepartment() {
		return department;
	}
	/**
	 * 担当者の所属を設定する
	 * @param depertment
	 */
	public void setDepartment(String department) {
		this.department = department;
	}
	/**
	 * 担当者の名前を取得する
	 * @return
	 */
	public String getManager_name() {
		return manager_name;
	}
	/**
	 * 担当者の名前を設定する
	 * @param manager_name
	 */
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	/**
	 * 担当者名のフリガナを取得する
	 * @return
	 */
	public String getManager_furigana() {
		return manager_furigana;
	}
	/**
	 * 担当者名のフリガナを設定する
	 * @param manager_furigana
	 */
	public void setManager_furigana(String manager_furigana) {
		this.manager_furigana = manager_furigana;
	}
	/**
	 * 担当者の電話番号を取得する
	 * @return
	 */
	public String getManager_phone_number() {
		return manager_phone_number;
	}
	/**
	 * 担当者の電話番号を設定する
	 * @param manager_phone_number
	 */
	public void setManager_phone_number(String manager_phone_number) {
		this.manager_phone_number = manager_phone_number;
	}
	/**
	 * 請求先の郵便番号を取得する
	 * @return
	 */
	public String getBilling_zip_code() {
		return billing_zip_code;
	}
	/**
	 * 請求先の郵便番号を設定する
	 * @param billing_zip_code
	 */
	public void setBilling_zip_code(String billing_zip_code) {
		this.billing_zip_code = billing_zip_code;
	}
	/**
	 * 請求先の住所を取得する
	 * @return
	 */
	public String getBilling_address() {
		return billing_address;
	}
	/**
	 * 請求先の住所を設定する
	 * @param billing_address
	 */
	public void setBilling_address(String billing_address) {
		this.billing_address = billing_address;
	}
	/**
	 * 請求先の電話番号を取得する
	 * @return
	 */
	public String getBilling_phone_number() {
		return billing_phone_number;
	}
	/**
	 * 請求先の電話番号を設定する
	 * @param billing_phone_number
	 */
	public void setBilling_phone_number(String billing_phone_number) {
		this.billing_phone_number = billing_phone_number;
	}
	/**
	 * 協賛企業の給与支給日を取得する
	 * @return
	 */
	public int getSalary_date() {
		return salary_date;
	}
	/**
	 * 協賛企業の給与支給日を設定する
	 * @param salary_date
	 */
	public void setSalary_date(int salary_date) {
		this.salary_date = salary_date;
	}
	/**
	 * 協賛企業の振込元銀行名を取得する
	 * @return
	 */
	public String getBank_name() {
		return bank_name;
	}
	/**
	 * 協賛企業の振込元銀行名を設定する
	 * @param bank_name
	 */
	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}
	/**
	 * 協賛企業の振込元銀行の支店名を取得する
	 * @return
	 */
	public String getBranch_name() {
		return branch_name;
	}
	/**
	 * 協賛企業の振込元銀行の支店名を設定する
	 * @param branch_name
	 */
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	/**
	 * 協賛企業の口座種別を取得する
	 * @return
	 */
	public int getAccount_type() {
		return account_type;
	}
	/**
	 * 協賛企業の口座種別を設定する
	 * @param account_type
	 */
	public void setAccount_type(int account_type) {
		this.account_type = account_type;
	}
	/**
	 * 協賛企業の振込元銀行の口座番号を取得する
	 * @return
	 */
	public String getAccount_number() {
		return account_number;
	}
	/**
	 * 協賛企業の振込元銀行の口座番号を設定する
	 * @param account_number
	 */
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	/**
	 * 協賛企業情報が削除済みかどうかを取得する
	 * @return
	 */
	public int getIs_deleted() {
		return is_deleted;
	}
	/**
	 * 協賛企業情報が削除済みかを設定する
	 * @param is_deleted
	 */
	public void setIs_deleted(int is_deleted) {
		this.is_deleted = is_deleted;
	}
	/**
	 * 協賛企業番号を取得する
	 * @return
	 */
	public int getCompany_id() {
		return company_id;
	}
	/**
	 * 協賛企業情報を設定する
	 * @param company_id
	 */
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
}
