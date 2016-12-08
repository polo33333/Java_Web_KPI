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
 * Servlet implementation class EditBieuMauServlet
 */
@WebServlet("/editBieuMau")
public class EditBieuMauServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditBieuMauServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		 
	      int mabieumau = Integer.parseInt(request.getParameter("mabieumau"));
	 
	      BieuMau bieumau = null;
	 
	      String errorString = null;
	 
	      try {
	          bieumau = DBUtils.findBieuMau(conn, mabieumau);
	      } catch (SQLException e) {
	          e.printStackTrace();
	          errorString = e.getMessage();
	      }
	 
	      // Không có lỗi.
	      // Biểu mẫu không tồn tại để edit.
	      // Redirect sang trang danh sách biểu mẫu.
	      if (errorString != null && bieumau == null) {
	          response.sendRedirect(request.getServletPath() + "/BieuMauList");
	          return;
	      }
	 
	      // Lưu thông tin vào request attribute trước khi forward sang views.
	      request.setAttribute("errorString", errorString);
	      request.setAttribute("bieumau", bieumau);
	 
	      RequestDispatcher dispatcher = request.getServletContext()
	              .getRequestDispatcher("/views/editbieumau.jsp");
	      dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
