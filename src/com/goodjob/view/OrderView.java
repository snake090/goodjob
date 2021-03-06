package com.goodjob.view;

import java.sql.Date;

/**
 * 注文受付票のオブジェクト
 * @author Taihei Yoshimoto
 * @version 1.0
 */
public class OrderView {
	// ご依頼主
	private	String			company_name;			// 協賛企業名
	private	int				company_code;			// 企業コード
	private	String			job;					// 所属
	private	String			member_furigana;		// フリガナ
	private	String			member_name;			// 会員氏名
	private	int				member_number;			// 会員番号
	private	String			member_phone_number;	// 連絡先電話番号
	private	String			category;				// 区分

	// 受注
	private	String			order_staff;			// 受注担当者
	private	Date			order_date;				// 注文受付
	private	long			order_id;				// 注文受付票コード

	// お届先
	private	String			shipping_category;		// 届先区分
	private	String			shipping_zip_code;		// 届先郵便番号
	private	String			shipping_address_00;	// 届先住所 右上
	private	String			shipping_address_01;	// 届先住所 左下
	private	String			shipping_name;			// 氏名
	private	String			shipping_phone_number;	// 電話番号
	private	String			shipping_if_out;		// 留守の時

	// お支払方法
	private	int				payment_category;		// 支払区分
	private	int				division;				// 分割回数
	private	String			from_bank;				// 振込元銀行
	private	Date			deduction_date;			// 控除年月

	/**
	 * コンストラクタ フィールド初期化
	 */
	public OrderView(){
		company_name			= "";
		company_code			= 0;
		job						= "";
		member_name				= "";
		member_number			= 0;
		member_phone_number		= "";
		category				= "";

		order_staff				= "";
		order_date				= null;
		order_id				= 0;

		shipping_category		= "";
		shipping_zip_code		= "";
		shipping_address_00		= "";
		shipping_address_01		= "";
		shipping_name			= "";
		shipping_phone_number	= "";
		shipping_if_out			= "";

		payment_category		= 0;
		division				= 0;
		from_bank				= "";
		deduction_date			= null;
	}

	/**
	 * @return company_name 協賛企業名
	 */
	public String getCompany_name() {
		return company_name;
	}

	/**
	 * @param company_name 協賛企業名
	 */
	public void setCompany_name(String company_name) {
		this.company_name = (company_name == null || company_name.equalsIgnoreCase("null"))? "" : company_name;
	}

	/**
	 * @return company_code 企業コード
	 */
	public int getCompany_code() {
		return company_code;
	}

	/**
	 * @param company_code 企業コード
	 */
	public void setCompany_code(int company_code) {
		this.company_code = company_code;
	}

	/**
	 * @return job 所属
	 */
	public String getJob() {
		return job;
	}

	/**
	 * @param job 所属
	 */
	public void setJob(String job) {
		this.job = job.equalsIgnoreCase("null")? "" : job;
	}

	/**
	 * @return member_furigana フリガナ
	 */
	public String getMember_furigana() {
		return member_furigana;
	}

	/**
	 * @param member_furigana フリガナ
	 */
	public void setMember_furigana(String member_furigana) {
		this.member_furigana = (member_furigana == null || member_furigana.equalsIgnoreCase("null"))? "" : member_furigana;
	}

	/**
	 * @return member_name 会員氏名
	 */
	public String getMember_name() {
		return member_name;
	}

	/**
	 * @param member_name 会員氏名
	 */
	public void setMember_name(String member_name) {
		this.member_name = (member_name == null || member_name.equalsIgnoreCase("null"))? "" : member_name;
	}

	/**
	 * @return member_number 会員番号
	 */
	public int getMember_number() {
		return member_number;
	}

	/**
	 * @param member_number 会員番号
	 */
	public void setMember_number(int member_number) {
		this.member_number = member_number;
	}

	/**
	 * @return member_phone_number 連絡先電話番号
	 */
	public String getMember_phone_number() {
		return member_phone_number;
	}

	/**
	 * @param member_phone_number 連絡先電話番号
	 */
	public void setMember_phone_number(String member_phone_number) {
		this.member_phone_number = (member_phone_number == null || member_phone_number.equalsIgnoreCase("null"))? "" : member_phone_number;
	}

	/**
	 * @return category 区分
	 */
	public String getCategory() {
		return category;
	}

	/**
	 * @param category 区分
	 */
	public void setCategory(String category) {
		this.category = (category == null || category.equalsIgnoreCase("null"))? "" : category;
	}

	/**
	 * @return order_staff 受注担当者
	 */
	public String getOrder_staff() {
		return order_staff;
	}

	/**
	 * @param order_staff 受注担当者
	 */
	public void setOrder_staff(String order_staff) {
		this.order_staff = (order_staff == null || order_staff.equalsIgnoreCase("null"))? "" : order_staff;
	}

	/**
	 * @return order_date 注文受付
	 */
	public Date getOrder_date() {
		return order_date;
	}

	/**
	 * @param order_date 注文受付
	 */
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	/**
	 * @return order_id 注文受付票コード
	 */
	public long getOrder_id() {
		return order_id;
	}

	/**
	 * @param order_id 注文受付票コード
	 */
	public void setOrder_id(long order_id) {
		this.order_id = order_id;
	}

	/**
	 * @return shipping_category 届先区分
	 */
	public String getShipping_category() {
		return shipping_category;
	}

	/**
	 * @param shipping_category 届先区分
	 */
	public void setShipping_category(String shipping_category) {
		this.shipping_category = (shipping_category == null || shipping_category.equalsIgnoreCase("null"))? "" : shipping_category;
	}

	/**
	 * @return shipping_zip_code 届先郵便番号
	 */
	public String getShipping_zip_code() {
		return shipping_zip_code;
	}

	/**
	 * @param shipping_zip_code 届先郵便番号
	 */
	public void setShipping_zip_code(String shipping_zip_code) {
		this.shipping_zip_code = (shipping_zip_code == null || shipping_zip_code.equalsIgnoreCase("null"))? "" : shipping_zip_code;
	}

	/**
	 * @return shipping_address_00 届先住所_右上
	 */
	public String getShipping_address_00() {
		return shipping_address_00;
	}

	/**
	 * @param shipping_address_00 届先住所_右上
	 */
	public void setShipping_address_00(String shipping_address_00) {
		this.shipping_address_00 = (shipping_address_00 == null || shipping_address_00.equalsIgnoreCase("null"))? "" : shipping_address_00;
	}

	/**
	 * @return shipping_address_01 届先住所_左下
	 */
	public String getShipping_address_01() {
		return shipping_address_01;
	}

	/**
	 * @param shipping_address_01 届先住所_左下
	 */
	public void setShipping_address_01(String shipping_address_01) {
		this.shipping_address_01 = (shipping_address_00 == null || shipping_address_01.equalsIgnoreCase("null"))? "" : shipping_address_01;
	}

	/**
	 * @return shipping_name 届先氏名
	 */
	public String getShipping_name() {
		return shipping_name;
	}

	/**
	 * @param shipping_name 届先氏名
	 */
	public void setShipping_name(String shipping_name) {
		this.shipping_name = (shipping_name == null || shipping_name.equalsIgnoreCase("null"))? "" : shipping_name;
	}

	/**
	 * @return shipping_phone_number 届先電話番号
	 */
	public String getShipping_phone_number() {
		return shipping_phone_number;
	}

	/**
	 * @param shipping_phone_number 届先電話番号
	 */
	public void setShipping_phone_number(String shipping_phone_number) {
		this.shipping_phone_number = (shipping_phone_number == null || shipping_phone_number.equalsIgnoreCase("null"))? "" : shipping_phone_number;
	}

	/**
	 * @return shipping_if_out 届先留守の時
	 */
	public String getShipping_if_out() {
		return shipping_if_out;
	}

	/**
	 * @param shipping_if_out 届先留守の時
	 */
	public void setShipping_if_out(String shipping_if_out) {
		this.shipping_if_out = (shipping_if_out == null || shipping_if_out.equalsIgnoreCase("null"))? "" : shipping_if_out;
	}

	/**
	 * @return payment_category 支払区分
	 */
	public int getPayment_category() {
		return payment_category;
	}

	/**
	 * @param payment_category 支払区分
	 */
	public void setPayment_category(int payment_category) {
		this.payment_category = payment_category;
	}

	/**
	 * @return division 分割回数
	 */
	public int getDivision() {
		return division;
	}

	/**
	 * @param division 分割回数
	 */
	public void setDivision(int division) {
		this.division = division;
	}

	/**
	 * @return from_bank 振込元銀行
	 */
	public String getFrom_bank() {
		return from_bank;
	}

	/**
	 * @param from_bank 振込元銀行
	 */
	public void setFrom_bank(String from_bank) {
		this.from_bank = (from_bank == null || from_bank.equalsIgnoreCase("null"))? "" : from_bank;
	}

	/**
	 * @return deduction_date 控除年月
	 */
	public Date getDeduction_date() {
		return deduction_date;
	}

	/**
	 * @param deduction_date 控除年月
	 */
	public void setDeduction_date(Date deduction_date) {
		this.deduction_date = deduction_date;
	}
}
