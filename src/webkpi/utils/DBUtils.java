package webkpi.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import webkpi.beans.UserAccount;
import webkpi.beans.BieuMau;
import webkpi.beans.TieuChi;

public class DBUtils {
	
	public static UserAccount findUser(Connection conn, String userName, String password ,int roleid) throws SQLException {
		 
	      String sql = "Select a.UserName, a.Password, a.hoten ,a.roleid,a.email,a.msgv from User_Account a "
	              + " where a.UserName = ? and a.password= ? and a.roleid=?";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, userName);
	      pstm.setString(2, password);
	      pstm.setLong(3, roleid);
	      ResultSet rs = pstm.executeQuery();
	 
	      if (rs.next()) {
	          String hoten = rs.getString("hoten");
	          String msgv = rs.getString("msgv");
	          int roleid1= rs.getInt("roleid");
	          String email = rs.getString("email");
	          UserAccount user = new UserAccount();
	          user.setUserName(userName);
	          user.setPassword(password);
	          user.setHoten(hoten);
	          user.setRoleid(roleid1);
	          user.setEmail(email);
	          user.setMsgv(msgv);
	          return user;
	      }
	      return null;
	  }
	 
	  public static UserAccount findUser(Connection conn, String userName) throws SQLException {
	 
	      String sql = "Select a.UserName, a.Password,a.hoten,a.msgv from User_Account a " + " where a.UserName = ? ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, userName);
	 
	      ResultSet rs = pstm.executeQuery();
	 
	      if (rs.next()) {
	          String password = rs.getString("Password");
	          String msgv = rs.getString("msgv");
	          String hoten = rs.getString("hoten");
	          UserAccount user = new UserAccount();
	          user.setUserName(userName);
	          user.setPassword(password);
	          user.setHoten(hoten);
	          user.setMsgv(msgv);
	          return user;
	      }
	      return null;
	  }
// List user
	  public static List<UserAccount> queryUserAccount(Connection conn) throws SQLException {
	      String sql = "Select a.Username, a.Hoten,a.Roleid from User_Account a ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      ResultSet rs = pstm.executeQuery();
	      List<UserAccount> list = new ArrayList<UserAccount>();
	      while (rs.next()) {
	          String userName = rs.getString("Username");
	          String hoten=rs.getString("Hoten");
	          int roleid=Integer.parseInt(rs.getString("Roleid"));
	          UserAccount useraccount = new UserAccount();
	          useraccount.setUserName(userName);
	          useraccount.setHoten(hoten);
	          useraccount.setRoleid(roleid);
	          list.add(useraccount);
	      }
	      return list;
	  }
//	  
	  public static List<BieuMau> queryBieuMau(Connection conn) throws SQLException {
	      String sql = "Select a.Mabieumau, a.Tenbieumau,a.Namhoc,a.Username from BieuMau a ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      ResultSet rs = pstm.executeQuery();
	      List<BieuMau> list = new ArrayList<BieuMau>();
	      while (rs.next()) {
	          int mabieumau = rs.getInt("Mabieumau");
	          String tenbieumau = rs.getString("Tenbieumau");
	          String namhoc=rs.getString("Namhoc");
	          String username=rs.getString("Username");
	          BieuMau bieumau = new BieuMau();
	          bieumau.setMabieumau(mabieumau);
	          bieumau.setTenbieumau(tenbieumau);;
	          bieumau.setNamhoc(namhoc);
	          bieumau.setUsername(username);
	          list.add(bieumau);
	      }
	      return list;
	  }
//	 
	  
//	 LIST BIEU MAU OF USER
	  public static List<BieuMau> queryBieuMauOfUser(Connection conn, String userdky) throws SQLException {
	      String sql = "SELECT * FROM bieumau WHERE TENBIEUMAU IN (SELECT TENBIEUMAU FROM bieumau INNER JOIN tieuchi ON bieumau.MABIEUMAU = tieuchi.MABIEUMAU and tieuchi.USERDKY=? GROUP BY TENBIEUMAU HAVING COUNT(TENBIEUMAU) >=1) ORDER BY TENBIEUMAU";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, userdky);
	 
	      ResultSet rs = pstm.executeQuery();
	      List<BieuMau> list = new ArrayList<BieuMau>();
	      while (rs.next()) {
	          int mabieumau = rs.getInt("Mabieumau");
	          String tenbieumau = rs.getString("Tenbieumau");
	          String namhoc=rs.getString("Namhoc");
	          String username=rs.getString("Username");
	          BieuMau bieumau = new BieuMau();
	          bieumau.setMabieumau(mabieumau);
	          bieumau.setTenbieumau(tenbieumau);;
	          bieumau.setNamhoc(namhoc);
	          bieumau.setUsername(username);
	          list.add(bieumau);
	      }
	      return list;
	  }
	  
	//danh sach cai tieu chi theo bieu mau of user----dang lam
	  public static List<TieuChi> queryListTieuChiOfUser(Connection conn,int Mabieumau) throws SQLException {
	      String sql = "Select a.Matieuchi, a.Tentieuchi,a.Mabieumau,a.Diemgv,a.Diemtbm,a.Diemtk,a.Diemptccb,a.Diemht,a.Userdky,a.Trangthai from TieuChi a  where a.Mabieumau = ? and Trangthai=1  ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setInt(1,Mabieumau);
	      ResultSet rs = pstm.executeQuery();
	      List<TieuChi> list = new ArrayList<TieuChi>();
	      while (rs.next()) {
	    	  int matieuchi = rs.getInt("Matieuchi");
	    	  String tentieuchi = rs.getString("Tentieuchi");
	          int mabieumau = rs.getInt("Mabieumau");
	          int diemgv = rs.getInt("Diemgv");
	          int diemtbm = rs.getInt("Diemtbm");
	          int diemtk = rs.getInt("Diemtk");
	          int diemptccb = rs.getInt("Diemptccb");
	          int diemht = rs.getInt("Diemht");
	          
	          
	          String userdky=rs.getString("Userdky");
	          int trangthai = rs.getInt("Trangthai");
	          TieuChi tieuchi = new TieuChi();
	          tieuchi.setMatieuchi(matieuchi);
	          tieuchi.setTentieuchi(tentieuchi);
	          tieuchi.setMabieumau(mabieumau);
	          tieuchi.setDiemgv(diemgv);
	          tieuchi.setDiemtbm(diemtbm);
	          tieuchi.setDiemtk(diemtk);
	          tieuchi.setDiemptccb(diemptccb);
	          tieuchi.setDiemht(diemht);
	          tieuchi.setUserdky(userdky);
	          tieuchi.setTrangthai(trangthai);
	          list.add(tieuchi);
	      }
	      return list;
	  }
//	
	  public static BieuMau findBieuMau(Connection conn, int Mabieumau) throws SQLException {
	      String sql = "Select a.Mabieumau, a.Tenbieumau, a.Namhoc,a.Username from BieuMau a where a.Mabieumau=?";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setInt(1, Mabieumau);
	 
	      ResultSet rs = pstm.executeQuery();
	 
	      while (rs.next()) {
//	          int Mabieumau = rs.getInt("Mabieumau");
	          String tenbieumau = rs.getString("Tenbieumau");
	          String namhoc = rs.getString("Namhoc");
	          String username=rs.getString("Username");
	          BieuMau bieumau = new BieuMau(Mabieumau, tenbieumau, namhoc,username);
	          return bieumau;
	      }
	      return null;
	  }
	 
	  public static void updateBieuMau(Connection conn, BieuMau bieumau) throws SQLException {
	      String sql = "Update BieuMau set Tenbieumau =?, Namhoc=? ,Username=? where Mabieumau=? ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      pstm.setString(1, bieumau.getTenbieumau());
	      pstm.setString(2, bieumau.getNamhoc());
	      pstm.setString(3,bieumau.getUsername());
	      pstm.setInt(4,bieumau.getMabieumau());
	      pstm.executeUpdate();
	  }
//	 update bang bieu mau
	  public static void insertBieuMau(Connection conn, BieuMau bieumau) throws SQLException {
	      String sql = "Insert into BieuMau( Tenbieumau,Namhoc,Username) values (?,?,?)";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      pstm.setString(1, bieumau.getTenbieumau());
	      pstm.setString(2, bieumau.getNamhoc());
	      pstm.setString(3, bieumau.getUsername());
	 
	      pstm.executeUpdate();
	  }
//	 xoa cot trong bieu mau
	  public static void deleteBieuMau(Connection conn, String mabieumau) throws SQLException {
	      String sql = "Delete from BieuMau where mabieumau= ?";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      pstm.setString(1, mabieumau);
	 
	      pstm.executeUpdate();
	  }
// danh sach cai tieu chi
	  public static List<TieuChi> queryTieuChi(Connection conn) throws SQLException {
	      String sql = "Select a.Matieuchi, a.Tentieuchi,a.Mabieumau,a.Diemgv,a.Diemtbm,a.Diemtk,a.Diemptccb,a.Diemht,a.Userdky,a.Trangthai from TieuChi a ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      ResultSet rs = pstm.executeQuery();
	      List<TieuChi> list = new ArrayList<TieuChi>();
	      while (rs.next()) {
	    	  int matieuchi = rs.getInt("Matieuchi");
	    	  String tentieuchi = rs.getString("Tentieuchi");
	          int mabieumau = rs.getInt("Mabieumau");
	          int diemgv = rs.getInt("Diemgv");
	          int diemtbm = rs.getInt("Diemtbm");
	          int diemtk = rs.getInt("Diemtk");
	          int diemptccb = rs.getInt("Diemptccb");
	          int diemht = rs.getInt("Diemht");
	          
	          
	          String userdky=rs.getString("Userdky");
	          int trangthai = rs.getInt("Trangthai");
	          TieuChi tieuchi = new TieuChi();
	          tieuchi.setMatieuchi(matieuchi);
	          tieuchi.setTentieuchi(tentieuchi);
	          tieuchi.setMabieumau(mabieumau);
	          tieuchi.setDiemgv(diemgv);
	          tieuchi.setDiemtbm(diemtbm);
	          tieuchi.setDiemtk(diemtk);
	          tieuchi.setDiemptccb(diemptccb);
	          tieuchi.setDiemht(diemht);
	          tieuchi.setUserdky(userdky);
	          tieuchi.setTrangthai(trangthai);
	          list.add(tieuchi);
	      }
	      return list;
	  }
//danh sach cai tieu chi theo bieu mau
		  public static List<TieuChi> queryListTieuChi(Connection conn,int Mabieumau) throws SQLException {
		      String sql = "Select a.Matieuchi, a.Tentieuchi,a.Mabieumau,a.Diemgv,a.Diemtbm,a.Diemtk,a.Diemptccb,a.Diemht,a.Userdky,a.Trangthai from TieuChi a  where a.Mabieumau = ? ";
		 
		      PreparedStatement pstm = conn.prepareStatement(sql);
		      pstm.setInt(1,Mabieumau);
		      ResultSet rs = pstm.executeQuery();
		      List<TieuChi> list = new ArrayList<TieuChi>();
		      while (rs.next()) {
		    	  int matieuchi = rs.getInt("Matieuchi");
		    	  String tentieuchi = rs.getString("Tentieuchi");
		          int mabieumau = rs.getInt("Mabieumau");
		          int diemgv = rs.getInt("Diemgv");
		          int diemtbm = rs.getInt("Diemtbm");
		          int diemtk = rs.getInt("Diemtk");
		          int diemptccb = rs.getInt("Diemptccb");
		          int diemht = rs.getInt("Diemht");
		          
		          
		          String userdky=rs.getString("Userdky");
		          int trangthai = rs.getInt("Trangthai");
		          TieuChi tieuchi = new TieuChi();
		          tieuchi.setMatieuchi(matieuchi);
		          tieuchi.setTentieuchi(tentieuchi);
		          tieuchi.setMabieumau(mabieumau);
		          tieuchi.setDiemgv(diemgv);
		          tieuchi.setDiemtbm(diemtbm);
		          tieuchi.setDiemtk(diemtk);
		          tieuchi.setDiemptccb(diemptccb);
		          tieuchi.setDiemht(diemht);
		          tieuchi.setUserdky(userdky);
		          tieuchi.setTrangthai(trangthai);
		          list.add(tieuchi);
		      }
		      return list;
		  }
	  
//	tim tieu chi	 
		  public static TieuChi findTieuChi(Connection conn, int Matieuchi) throws SQLException {
		      String sql = "Select a.Matieuchi, a.Tentieuchi, a.Mabieumau,a.Userdky from TieuChi a where a.Matieuchi=?";
		 
		      PreparedStatement pstm = conn.prepareStatement(sql);
		      pstm.setInt(1, Matieuchi);
		 
		      ResultSet rs = pstm.executeQuery();
		 
		      while (rs.next()) {
//		          int Mabieumau = rs.getInt("Mabieumau");
		          String tentieuchi = rs.getString("Tentieuchi");
		          int mabieumau= rs.getInt("Mabieumau");
		          String userdky=rs.getString("Userdky");
		          TieuChi tieuchi = new TieuChi(Matieuchi, tentieuchi, mabieumau,0,0,0,0,0,userdky,0);
		          return tieuchi;
		      }
		      return null;
		  }
	  
// them vao bang tieu chi
		  public static void insertTieuChi(Connection conn, TieuChi tieuchi) throws SQLException {
		      String sql = "Insert into TieuChi( Tentieuchi,Mabieumau,Userdky) values (?,?,?)";
		 //,Diemgv,Diemtbm,Diemtk,Diemptccb,Diemht,Trangthai
		      PreparedStatement pstm = conn.prepareStatement(sql);
		 
		      pstm.setString(1, tieuchi.getTentieuchi());
		      pstm.setInt(2, tieuchi.getMabieumau());
//		      pstm.setInt(3, tieuchi.getDiemgv());
//		      pstm.setInt(4, tieuchi.getDiemtbm());
//		      pstm.setInt(5, tieuchi.getDiemtk());
//		      pstm.setInt(6, tieuchi.getDiemptccb());
//		      pstm.setInt(7, tieuchi.getDiemht());
		      pstm.setString(3, tieuchi.getUserdky());
//		      pstm.setInt(9, tieuchi.getTrangthai());
		      
		 
		      pstm.executeUpdate();
		  }
	  
// update bang tieu chi
		  public static void updateTieuChi(Connection conn, TieuChi tieuchi) throws SQLException {
		      String sql = "Update TieuChi set Tentieuchi =?, Mabieumau=?,Diemgv=?,Diemtbm=?,Diemtk=?,Diemptccb=?,Diemht=?,Userdky=?, Trangthai=? where Matieuchi=?";
		 
		      PreparedStatement pstm = conn.prepareStatement(sql);
		 
		      pstm.setString(1, tieuchi.getTentieuchi());
		      pstm.setInt(2, tieuchi.getMabieumau());
		      pstm.setInt(3, tieuchi.getDiemgv());
		      pstm.setInt(4, tieuchi.getDiemtbm());
		      pstm.setInt(5, tieuchi.getDiemtk());
		      pstm.setInt(6, tieuchi.getDiemptccb());
		      pstm.setInt(7, tieuchi.getDiemht());
		      pstm.setString(8, tieuchi.getUserdky());
		      pstm.setInt(9, tieuchi.getTrangthai());
		      pstm.setInt(10, tieuchi.getMatieuchi());
		      pstm.executeUpdate();
		  }
// update bang tieu chi
		  public static void updateTieuChiDangKy(Connection conn, TieuChi tieuchi) throws SQLException {
		      String sql = "Update TieuChi set Trangthai=? where Matieuchi=?";
		 
		      PreparedStatement pstm = conn.prepareStatement(sql);
		 
		     
		      pstm.setInt(1, tieuchi.getTrangthai());
		      pstm.setInt(2, tieuchi.getMatieuchi());
		      pstm.executeUpdate();
		  }
//xoa cot trong tieu chi
		  public static void deleteTieuChi(Connection conn, String matieuchi) throws SQLException {
		      String sql = "Delete from TieuChi where matieuchi= ?";
		 
		      PreparedStatement pstm = conn.prepareStatement(sql);
		 
		      pstm.setString(1, matieuchi);
		 
		      pstm.executeUpdate();
		  }
}
