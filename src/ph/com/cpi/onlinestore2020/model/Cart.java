package ph.com.cpi.onlinestore2020.model;

import java.math.BigDecimal;

public class Cart {
	private Integer customerId;
	private Integer productId;
	private String productName;
	private BigDecimal price;
	private Integer quantity;
	
	
	public Cart(Integer customerId, Integer productId, String productName, BigDecimal price, Integer quantity) {
		super();
		this.customerId = customerId;
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
	}
	
	public Integer getUserId() {
		return customerId;
	}
	public void setUserId(Integer userId) {
		this.customerId = userId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	
	@Override
	public String toString() {
		return "Cart [userId=" + customerId + ", productId=" + productId + ", productName=" + productName + ", price="
				+ price + ", quantity=" + quantity + "]";
	}
}