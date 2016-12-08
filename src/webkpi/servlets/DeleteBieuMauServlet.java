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

import webkpi.utils.DBUtils;
import webkpi.utils.MyUtils;

/**
 * Servlet implementation class DeleteBieuMauServlet
 */
@WebServlet("/deleteBieuMau")
public class DeleteBieuMauServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBieuMauServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		 
	      String mabieumau = (String) request.getParameter("mabieumau");
	 
	      String errorString = null;
	 
	      try {
	          DBUtils.deleteBieuMau(conn, mabieumau);
	      } catch (SQLException e) {
	          e.printStackTrace();
	          errorString = e.getMessage();
	      }
	      
	      // Nếu có lỗi forward sang trang báo lỗi.
	      if (errorString != null) {
	          // Lưu thông tin vào request attribute trước khi forward sang views.
	          request.setAttribute("errorString", errorString);
	          //
	          RequestDispatcher dispatcher = request.getServletContext()
	                  .getRequestDispatcher("/views/deleteBieuMauError.jsp");
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
