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

//import webkpi.beans.BieuMau;
import webkpi.beans.TieuChi;
import webkpi.utils.DBUtils;
import webkpi.utils.MyUtils;

/**
 * Servlet implementation class DoCreateTieuChiServlet
 */
@WebServlet("/doCreateTieuChi")
public class DoCreateTieuChiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoCreateTieuChiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		//int mabieumau = Integer.parseInt( request.getParameter("mabieumau"));
	      String tentieuchi = (String) request.getParameter("tentieuchi");
	      int mabieumau = Integer.parseInt(request.getParameter("mabieumau"));
	      String userdky = (String) request.getParameter("userdky");
	      
	      TieuChi tieuchi= new TieuChi(0,tentieuchi,mabieumau,0,0,0,0,0,userdky,0);
	 
	      String errorString = null;
	 
	      
	 
	      if (errorString == null) {
	          try {
	              DBUtils.insertTieuChi(conn,tieuchi);
	          } catch (SQLException e) {
	              e.printStackTrace();
	              errorString = e.getMessage();
	          }
	      }
	      
	      // Lưu thông tin vào request attribute trước khi forward sang views.
	      request.setAttribute("errorString", errorString);
	      request.setAttribute("tieuchi", tieuchi);
	 
	      // Nếu có lỗi forward sang trang edit
	      if (errorString != null) {
	          RequestDispatcher dispatcher = request.getServletContext()
	                  .getRequestDispatcher("/views/createtieuchi.jsp");
	          dispatcher.forward(request, response);
	      }
	      // Nếu mọi thứ tốt đẹp.
	      // Redirect sang trang danh sách sản phẩm.
	      else {
	          response.sendRedirect(request.getContextPath() + "/TieuChiList");
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
