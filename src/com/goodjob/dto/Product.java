package com.goodjob.dto;

import java.util.List;

public class Product {

	private int productId;
	private String productName;
	private int unitPrice;
	private int quantity;
	private int price;
	private List<String> colors;
	private String selectedColor;
	private List<String> patterns;
	private String selectedPattern;
	private List<String> sizes;
	private String selectedSize;
	private String notes;

	public Product() {

	}

	public Product(int productId) {
		this.productId = productId;
	}

	public Product(int productId, String productName, int unitPrice, int quantity, List<String> colors,
			String selectedColor, List<String> patterns, String selectedPattern, List<String> sizes,
			String selectedSize, String notes) {
		this.productId = productId;
		this.productName = productName;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.colors = colors;
		this.selectedColor = selectedColor;
		this.patterns = patterns;
		this.selectedPattern = selectedPattern;
		this.sizes = sizes;
		this.selectedSize = selectedSize;
		this.notes = notes;
	}

	/**
	 * @return productId
	 */
	public int getProductId() {
		return productId;
	}
	/**
	 * @return productName
	 */
	public String getProductName() {
		return productName;
	}
	/**
	 * @return unitPrice
	 */
	public int getUnitPrice() {
		return unitPrice;
	}
	/**
	 * @return quantity
	 */
	public int getQuantity() {
		return quantity;
	}
	/**
	 * @return price
	 */
	public int getPrice() {
		return price;
	}
	/**
	 * @return colors
	 */
	public List<String> getColors() {
		return colors;
	}
	/**
	 * @return selectedColor
	 */
	public String getSelectedColor() {
		return selectedColor;
	}
	/**
	 * @return patterns
	 */
	public List<String> getPatterns() {
		return patterns;
	}
	/**
	 * @return selectedPattern
	 */
	public String getSelectedPattern() {
		return selectedPattern;
	}
	/**
	 * @return sizes
	 */
	public List<String> getSizes() {
		return sizes;
	}
	/**
	 * @return selectedSize
	 */
	public String getSelectedSize() {
		return selectedSize;
	}
	/**
	 * @return notes
	 */
	public String getNotes() {
		return notes;
	}
	/**
	 * @param productId セットする productId
	 */
	public void setProductId(int productId) {
		this.productId = productId;
	}
	/**
	 * @param productName セットする productName
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}
	/**
	 * @param unitPrice セットする unitPrice
	 */
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	/**
	 * @param quantity セットする quantity
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	/**
	 * @param price セットする price
	 */
	public void setPrice(int price) {
		this.price = price;
	}
	/**
	 * @param colors セットする colors
	 */
	public void setColors(List<String> colors) {
		this.colors = colors;
	}
	/**
	 * @param selectedColor セットする selectedColor
	 */
	public void setSelectedColor(String selectedColor) {
		this.selectedColor = selectedColor;
	}
	/**
	 * @param patterns セットする patterns
	 */
	public void setPatterns(List<String> patterns) {
		this.patterns = patterns;
	}
	/**
	 * @param selectedPattern セットする selectedPattern
	 */
	public void setSelectedPattern(String selectedPattern) {
		this.selectedPattern = selectedPattern;
	}
	/**
	 * @param sizes セットする sizes
	 */
	public void setSizes(List<String> sizes) {
		this.sizes = sizes;
	}
	/**
	 * @param selectedSize セットする selectedSize
	 */
	public void setSelectedSize(String selectedSize) {
		this.selectedSize = selectedSize;
	}
	/**
	 * @param notes セットする notes
	 */
	public void setNotes(String notes) {
		this.notes = notes;
	}
}
