package webkpi.beans;

public class TieuChi {
	private int matieuchi;
	private String tentieuchi;
	private int mabieumau;
	private int diemgv;
	private int diemtbm;
	private int diemtk;
	private int diemptccb;
	private int diemht;
	private String userdky;
	private int trangthai;
	
	public TieuChi(){}
	public TieuChi(int matieuchi,String tentieuchi,int mabieumau,int diemgv, int diemtbm,int diemtk, int diemptccb,int diemht, String userdky,int trangthai){
		this.setMatieuchi(matieuchi);
		this.setTentieuchi(tentieuchi);
		this.setMabieumau(mabieumau);
		this.setDiemgv(diemgv);
		this.setDiemtbm(diemtbm);
		this.setDiemtk(diemtk);
		this.setDiemptccb(diemptccb);
		this.setDiemht(diemht);
		this.setUserdky(userdky);
		this.setTrangthai(trangthai);
		
	}
	public int getMatieuchi() {
		return matieuchi;
	}
	public void setMatieuchi(int matieuchi) {
		this.matieuchi = matieuchi;
	}
	public String getTentieuchi() {
		return tentieuchi;
	}
	public void setTentieuchi(String tentieuchi) {
		this.tentieuchi = tentieuchi;
	}
	public int getMabieumau() {
		return mabieumau;
	}
	public void setMabieumau(int mabieumau) {
		this.mabieumau = mabieumau;
	}
	public int getDiemgv() {
		return diemgv;
	}
	public void setDiemgv(int diemgv) {
		this.diemgv = diemgv;
	}
	public int getDiemtbm() {
		return diemtbm;
	}
	public void setDiemtbm(int diemtbm) {
		this.diemtbm = diemtbm;
	}
	public int getDiemtk() {
		return diemtk;
	}
	public void setDiemtk(int diemtk) {
		this.diemtk = diemtk;
	}
	public int getDiemptccb() {
		return diemptccb;
	}
	public void setDiemptccb(int diemptccb) {
		this.diemptccb = diemptccb;
	}
	public int getDiemht() {
		return diemht;
	}
	public void setDiemht(int diemht) {
		this.diemht = diemht;
	}
	public String getUserdky() {
		return userdky;
	}
	public void setUserdky(String userdky) {
		this.userdky = userdky;
	}
	public int getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
	

}
