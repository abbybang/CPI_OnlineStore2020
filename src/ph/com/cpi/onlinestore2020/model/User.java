package ph.com.cpi.onlinestore2020.model;

public class User {
	private Integer userId;
	private String fname;
	private String lname;
	private String email;
	private String address;
	private String phoneNumber;
	private String userName;
	private String passWord;
	private String isAdmin;
	
	public Integer userId() {
		return userId;
	}

	public void setUserID(Integer userId) {
		this.userId = userId;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return passWord;
	}

	public void setPassword(String password) {
		this.passWord = password;
	}

	public String getStatus() {
		return isAdmin;
	}

	public void setStatus(String status) {
		this.isAdmin = status;
	}

	@Override
	public String toString() {
		return "User [userID=" + userId + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", address="
				+ address + ", phoneNumber=" + phoneNumber + ", userName=" + userName + ", password=" + passWord
				+ ", status=" + isAdmin + "]";
	}
}
