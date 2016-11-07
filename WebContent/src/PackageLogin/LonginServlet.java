package PackageLogin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LonginServlet
 */
@WebServlet("/LonginServlet")
public class LonginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
		try {
			UserBean user = new UserBean();
			user.setEmail(request.getParameter("email"));
			user.setPassword(request.getParameter("pw"));
			user.setRole(request.getParameter("role"));
			user = UserDAO.login(user); 
			if (user!=null){
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser",user);
				response.sendRedirect("tongquan.jsp"); //logged-in page 
			} else 
				response.sendRedirect("login.jsp"); //error page 
		} catch (Throwable theException) {
			System.out.println(theException);
			}
	}
}