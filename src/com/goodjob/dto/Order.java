package com.goodjob.dto;

import java.sql.Date;

/**
 * 注文のDTO
 * @author Taihei Yoshimoto
 * @version 1.0
 */
public class Order {
	private	long		order_id;				// 注文コード
	private	int			member_id;				// 会員コード
	private	int			shipping_category;		// 届先区分
	private	String		shipping_zip_code;		// 届先住所
	private	String		shipping_address;		// 届先住所
	private	String		shipping_name;			// 届先氏名
	private	String		shipping_phone_number;	// 届先電話番号
	private	String		shipping_if_out;		// 届先留守の時
	private	int			division;				// 分割回数
	private	int			payment_category;		// 支払区分
	private	String		from_bank;				// 振込元銀行
	private	Date		deduction_date;			// 控除年月
	private	String		order_staff;			// 受注担当者
	private	Date		order_date;				// 注文日

	/**
	 * コンストラクタ フィールド初期化
	 */
	public Order(){
		order_id				= 0;
		member_id				= 0;
		shipping_category		= 0;
		shipping_zip_code		= "";
		shipping_address		= "";
		shipping_name			= "";
		shipping_phone_number	= "";
		shipping_if_out			= "";
		division				= 0;
		payment_category		= 0;
		from_bank				= "";
		deduction_date			= null;
		order_staff				= "";
		order_date				= null;
	}

	/**
	 * @return order_id 注文コード
	 */
	public long getOrder_id() {
		return order_id;
	}

	/**
	 * @param order_id 注文コード
	 */
	public void setOrder_id(long order_id) {
		this.order_id = order_id;
	}

	/**
	 * @return member_id 会員コード
	 */
	public int getMember_id() {
		return member_id;
	}

	/**
	 * @param member_id 会員コード
	 */
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	/**
	 * @return shipping_category 届先区分
	 */
	public int getShipping_category() {
		return shipping_category;
	}

	/**
	 * @param shipping_category 届先区分
	 */
	public void setShipping_category(int shipping_category) {
		this.shipping_category = shipping_category;
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
		this.shipping_zip_code = shipping_zip_code;
	}

	/**
	 * @return shipping_address 届先住所
	 */
	public String getShipping_address() {
		return shipping_address;
	}

	/**
	 * @param shipping_address 届先住所
	 */
	public void setShipping_address(String shipping_address) {
		this.shipping_address = shipping_address;
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
		this.shipping_name = shipping_name;
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
		this.shipping_phone_number = shipping_phone_number;
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
		this.shipping_if_out = shipping_if_out;
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
	 * @return from_bank 振込元銀行
	 */
	public String getFrom_bank() {
		return from_bank;
	}

	/**
	 * @param from_bank 振込元銀行
	 */
	public void setFrom_bank(String from_bank) {
		this.from_bank = from_bank;
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

	/**
	 * @return order_staff 受注担当者氏名
	 */
	public String getOrder_staff() {
		return order_staff;
	}

	/**
	 * @param order_staff 受注担当者氏名
	 */
	public void setOrder_staff(String order_staff) {
		this.order_staff = order_staff;
	}

	/**
	 * @return order_date 注文日
	 */
	public Date getOrder_date() {
		return order_date;
	}

	/**
	 * @param order_date 注文日
	 */
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

}
