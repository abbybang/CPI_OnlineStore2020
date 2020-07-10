package ph.com.cpi.onlinestore2020.model;

public class Authenticator {
	User user = new User();
	
	public String authenticate(String username, String password){
		if("admin".equals(username) && "admin".equals(password)){
			return "success";
		}else{
			return "failed";
		}
	}
}
