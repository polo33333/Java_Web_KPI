package webkpi.beans;

public class BieuMau {
	private int mabieumau;
	private String tenbieumau;
	private String namhoc;
	private String username;
	
	public BieuMau(){
		
	}
	public  BieuMau(int mabieumau,String tenbieumau,String namhoc,String username){
		this.setMabieumau(mabieumau);
		this.setTenbieumau(tenbieumau);
		this.setNamhoc(namhoc);
		this.setUsername(username);
		
	}
	public int getMabieumau() {
		return mabieumau;
	}
	public void setMabieumau(int mabieumau) {
		this.mabieumau = mabieumau;
	}
	public String getTenbieumau() {
		return tenbieumau;
	}
	public void setTenbieumau(String tenbieumau) {
		this.tenbieumau = tenbieumau;
	}
	public String getNamhoc() {
		return namhoc;
	}
	public void setNamhoc(String namhoc) {
		this.namhoc = namhoc;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}