package webkpi.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

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
 * Servlet implementation class doDangKyKPIServlet
 */
@WebServlet("/doDangKyKPI")
public class doDangKyKPIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doDangKyKPIServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		int mabieumau = Integer.parseInt( request.getParameter("mabieumau"));
		String errorString = null;
		List<TieuChi> list = null;
		try {
			list = DBUtils.queryListTieuChi(conn,mabieumau);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("listtieuchi", list);

		// Forward sang /WEB-INF/views/bieumauListView.jsp
		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/views/dangkykpilist.jsp");
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
