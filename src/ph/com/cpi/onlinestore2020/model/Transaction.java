package ph.com.cpi.onlinestore2020.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Transaction {
	private Integer transactionID;
	private Integer userID;
	private BigDecimal totalAmount;
	private Timestamp transactionDate;
	
	public Transaction(BigDecimal transactionID, BigDecimal userID, BigDecimal totalAmount, Timestamp transactionDate) {
		super();
		this.transactionID = transactionID.intValue();
		this.userID = userID.intValue();
		this.totalAmount = totalAmount;
		this.transactionDate = transactionDate;
	}

	public Integer getTransactionID() {
		return transactionID;
	}
	public void setTransactionID(Integer transactionID) {
		this.transactionID = transactionID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public BigDecimal getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Timestamp getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(Timestamp transactionDate) {
		this.transactionDate = transactionDate;
	}

	@Override
	public String toString() {
		return "Transaction [transactionID=" + transactionID + ", userID=" + userID + ", totalAmount=" + totalAmount
				+ ", transactionDate=" + transactionDate + "]";
	}
}
