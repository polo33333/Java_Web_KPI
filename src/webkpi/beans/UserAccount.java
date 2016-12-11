package webkpi.beans;

public class UserAccount {
	
	private String userName;
	
	private String password;
	private String hoten;
	private String email;
	private String ghichu;
	private int roleid;
	private String msgv;
	public UserAccount() {

	}
	public UserAccount(String userName,String hoten,int roleid){
		this.setUserName(userName);
		this.setHoten(hoten);
		this.setRoleid(roleid);
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGhichu() {
		return ghichu;
	}
	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public String getMsgv() {
		return msgv;
	}
	public void setMsgv(String msgv) {
		this.msgv = msgv;
	}

}
