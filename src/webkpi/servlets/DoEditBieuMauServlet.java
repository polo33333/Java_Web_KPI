package webkpi.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webkpi.beans.BieuMau;
import webkpi.utils.DBUtils;
import webkpi.utils.MyUtils;

/**
 * Servlet implementation class DoEditBieuMauServlet
 */
@WebServlet("/doeditBieuMau")
public class DoEditBieuMauServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoEditBieuMauServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		 
			int mabieumau = Integer.parseInt( request.getParameter("mabieumau"));
	      String tenbieumau = (String) request.getParameter("tenbieumau");
	      String namhoc = (String) request.getParameter("namhoc");
	      String username = (String) request.getParameter("username");
	      BieuMau bieumau = new BieuMau(mabieumau, tenbieumau,namhoc, username);
	 
	      String errorString = null;
	 
	      try {
	          DBUtils.updateBieuMau(conn, bieumau);
	      } catch (SQLException e) {
	          e.printStackTrace();
	          errorString = e.getMessage();
	      }
	      // Lưu thông tin vào request attribute trước khi forward sang views.
	      request.setAttribute("errorString", errorString);
	      request.setAttribute("bieumau", bieumau);
	 
	      // Nếu có lỗi forward sang trang edit
	      if (errorString != null) {
	          RequestDispatcher dispatcher = request.getServletContext()
	                  .getRequestDispatcher("/views/editbieumau.jsp");
	          dispatcher.forward(request, response);
	      }
	      // Nếu mọi thứ tốt đẹp.
	      // Redirect sang trang danh sách sản phẩm.
	      else {
	          response.sendRedirect(request.getContextPath() + "/BieuMauList");
	      }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
