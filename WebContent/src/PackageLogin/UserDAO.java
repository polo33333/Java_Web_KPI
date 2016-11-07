package PackageLogin;
import java.text.*;
import java.util.*;
import java.sql.*;

public class UserDAO {
	static Connection currentCon = null;
	static ResultSet rs = null; 
	public static UserBean login(UserBean bean) {
		//preparing some objects for connection 
		Statement stmt = null; 
		String email = bean.getEmail();
		String password = bean.getPassword();
		String role = bean.getRole();
		String searchQuery = "select * from users where email='" + email + "' AND password='" + password + "'AND role='"+role+"'";
		try {
			//connect to DB
			currentCon = ConnectionManager.getConnection();
			stmt=currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();
			// if user does not exist set the isValid variable to false 
			if (!more) {
				System.out.println("Sorry, you are not a registered user! Please sign up first");
			} //if user exists set the isValid variable to true else 
			if (more) {
				String email1 = rs.getString("Email");
				System.out.println("Welcome " + email1);
				bean.setEmail(email1);
				bean.setPassword(password);
				bean.setRole(role);
			}
		}
		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		}
		//some exception handling 
		finally{
			if (rs != null) {
				try { 
					rs.close();
				} catch (Exception e) {} rs = null; }
			if (stmt != null) { 
				try {
					stmt.close();
				}
				catch (Exception e) {} stmt = null;
			} if (currentCon != null) {
				try { currentCon.close();
				} catch (Exception e) {

				} currentCon = null;
			}
		} return bean;
	}
}
