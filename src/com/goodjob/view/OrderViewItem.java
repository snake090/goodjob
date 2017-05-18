package com.goodjob.view;

/**
 * 注文受付票のご注文商品のオブジェクト
 * @author Taihei Yoshimoto
 * @version 1.0
 */
public class OrderViewItem {
	// 商品番号
	private	int		item_number_00;	// 号
	private	int		item_number_01;	// 頁
	private	int		item_number_02;	// No.

	private	String	item_name;		// 商品名

	// 商品区分
	private	String	color;			// 色
	private	String	pattern;		// 柄
	private	String	size;			// サイズ

	private	int		unit_price;		// 単価
	private	int		quantity;		// 数量
	private	String	supplement;		// 補足

	/**
	 * コンストラクタ フィールド初期化
	 */
	public OrderViewItem(){
		item_number_00	= -1;
		item_number_01	= -1;
		item_number_02	= -1;
		item_name		= "";
		color			= "";
		pattern			= "";
		size			= "";
		unit_price		= -1;
		quantity		= -1;
		supplement		= "";
	}

	/**
	 * 商品番号から号、頁、No.に入力
	 * @param item_number 商品番号
	 */
	public void setItem_number(long item_number){
		item_number_00 = (int)(item_number / 100000000l);
		item_number_01 = (int)(item_number % 100000000l / 10000);
		item_number_02 = (int)(item_number % 10000);
	}

	/**
	 * 号、頁、No.から商品番号に出力
	 * @return item_number 商品番号
	 */
	public long getItem_number(){
		long item_number	= 0;
		item_number			= item_number_00;
		item_number			*= 10000l;
		item_number			+= item_number_01;
		item_number			*= 10000l;
		item_number			+= item_number_02;

		return item_number;
	}

	/**
	 * @param item_number_00 号
	 */
	public void setItem_number_00(int item_number_00){
		this.item_number_00 = item_number_00;
	}

	/**
	 * @return item_number_00 号
	 */
	public int getItem_number_00(){
		return item_number_00;
	}

	/**
	 * @param item_number_01 頁
	 */
	public void setItem_number_01(int item_number_01){
		this.item_number_01 = item_number_01;
	}

	/**
	 * @return item_number_01 頁
	 */
	public int getItem_number_01(){
		return item_number_01;
	}

	/**
	 * @param item_number_02 No.
	 */
	public void setItem_number_02(int item_number_02){
		this.item_number_02 = item_number_02;
	}

	/**
	 * @return item_number_02 No.
	 */
	public int getItem_number_02(){
		return item_number_02;
	}

	/**
	 * @return item_name 商品名
	 */
	public String getItem_name() {
		return item_name;
	}

	/**
	 * @param item_name 商品名
	 */
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	/**
	 * @return color 色
	 */
	public String getColor() {
		return color;
	}

	/**
	 * @param color 色
	 */
	public void setColor(String color) {
		this.color = color;
	}

	/**
	 * @return pattern 柄
	 */
	public String getPattern() {
		return pattern;
	}

	/**
	 * @param pattern 柄
	 */
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}

	/**
	 * @return size サイズ
	 */
	public String getSize() {
		return size;
	}

	/**
	 * @param size サイズ
	 */
	public void setSize(String size) {
		this.size = size;
	}

	/**
	 * @return unit_price 単価
	 */
	public int getUnit_price() {
		return unit_price;
	}

	/**
	 * @param unit_price 単価
	 */
	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}

	/**
	 * @return quantity 数量
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity 数量
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	/**
	 * @return supplement 補足
	 */
	public String getSupplement() {
		return supplement;
	}

	/**
	 * @param supplement 補足
	 */
	public void setSupplement(String supplement) {
		this.supplement = supplement;
	}
}
