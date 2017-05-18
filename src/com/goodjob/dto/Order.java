package com.goodjob.dto;

import java.sql.Date;

/**
 * @author Taihei Yoshimoto
 * @version 1.0
 * 注文のDTO
 */
public class Order {
	/**
	 * 注文コード
	 */
	private long orderId;

	/**
	 * 会員コード
	 */
	private int memberId;

	/**
	 * 届先区分
	 */
	private int shippingCategory;

	/**
	 * 届先郵便番号
	 */
	private String shippingZipCode;

	/**
	 * 届先住所
	 */
	private String shippingAddress;

	/**
	 * 届先氏名
	 */
	private String shippingName;

	/**
	 * 届先電話番号
	 */
	private String shippingPhonNumber;

	/**
	 * 届先留守の時
	 */
	private String shippingIfOut;

	/**
	 * 分割回数
	 */
	private int division;

	/**
	 * 支払区分
	 */
	private int paymentCategory;

	/**
	 * 振込元銀行
	 */
	private String fromBank;

	/**
	 * 控除年月
	 */
	private Date deductionDate;

	/**
	 * 受注担当者氏名
	 */
	private String orderStaff;

	/**
	 * 注文日
	 */
	private Date orderDate;

	/**
	 * @return orderId 注文コード
	 */
	public long getOrderId() {
		return orderId;
	}

	/**
	 * @param orderId 注文コード
	 */
	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}

	/**
	 * @return memberId 会員コード
	 */
	public int getMemberId() {
		return memberId;
	}

	/**
	 * @param memberId 会員コード
	 */
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	/**
	 * @return shippingCategory 届先区分
	 */
	public int getShippingCategory() {
		return shippingCategory;
	}

	/**
	 * @param shippingCategory 届先区分
	 */
	public void setShippingCategory(int shippingCategory) {
		this.shippingCategory = shippingCategory;
	}

	/**
	 * @return shippingZipCode 届先郵便番号
	 */
	public String getShippingZipCode() {
		return shippingZipCode;
	}

	/**
	 * @param shippingZipCode 届先郵便番号
	 */
	public void setShippingZipCode(String shippingZipCode) {
		this.shippingZipCode = shippingZipCode;
	}

	/**
	 * @return shippingAddress 届先住所
	 */
	public String getShippingAddress() {
		return shippingAddress;
	}

	/**
	 * @param shippingAddress 届先住所
	 */
	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	/**
	 * @return shippingName 届先氏名
	 */
	public String getShippingName() {
		return shippingName;
	}

	/**
	 * @param shippingName 届先氏名
	 */
	public void setShippingName(String shippingName) {
		this.shippingName = shippingName;
	}

	/**
	 * @return shippingPhoneNumber 届先電話番号
	 */
	public String getShippingPhonNumber() {
		return shippingPhonNumber;
	}

	/**
	 * @param shippingPhonNumber 届先電話番号
	 */
	public void setShippingPhonNumber(String shippingPhonNumber) {
		this.shippingPhonNumber = shippingPhonNumber;
	}

	/**
	 * @return shippingIfOut 届先留守の時
	 */
	public String getShippingIfOut() {
		return shippingIfOut;
	}

	/**
	 * @param shippingIfOut 届先留守の時
	 */
	public void setShippingIfOut(String shippingIfOut) {
		this.shippingIfOut = shippingIfOut;
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
	 * @return paymentCategory 支払区分
	 */
	public int getPaymentCategory() {
		return paymentCategory;
	}

	/**
	 * @param paymentCategory 支払区分
	 */
	public void setPaymentCategory(int paymentCategory) {
		this.paymentCategory = paymentCategory;
	}

	/**
	 * @return fromBank 振込元銀行
	 */
	public String getFromBank() {
		return fromBank;
	}

	/**
	 * @param fromBank 振込元銀行
	 */
	public void setFromBank(String fromBank) {
		this.fromBank = fromBank;
	}

	/**
	 * @return deductionDate 控除年月
	 */
	public Date getDeductionDate() {
		return deductionDate;
	}

	/**
	 * @param deductionDate 控除年月
	 */
	public void setDeductionDate(Date deductionDate) {
		this.deductionDate = deductionDate;
	}

	/**
	 * @return orderStaff 受注担当者氏名
	 */
	public String getOrderStaff() {
		return orderStaff;
	}

	/**
	 * @param orderStaff 受注担当者氏名
	 */
	public void setOrderStaff(String orderStaff) {
		this.orderStaff = orderStaff;
	}

	/**
	 * @return orderDate 注文日
	 */
	public Date getOrderDate() {
		return orderDate;
	}

	/**
	 * @param orderDate 注文日
	 */
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

}
