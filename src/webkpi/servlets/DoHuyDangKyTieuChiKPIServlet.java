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

import webkpi.beans.TieuChi;
import webkpi.utils.DBUtils;
import webkpi.utils.MyUtils;

/**
 * Servlet implementation class DoHuyDangKyTieuChiKPIServlet
 */
@WebServlet("/doHuyDangKyTieuChiKPI")
public class DoHuyDangKyTieuChiKPIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoHuyDangKyTieuChiKPIServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);

		int matieuchi =Integer.parseInt( request.getParameter("matieuchi"));
		int mabieumau=Integer.parseInt(request.getParameter("mabieumau"));
		int trangthai=0;//hủy đăng ký
		TieuChi tieuchi = new TieuChi(matieuchi,"",0,0,0,0,0,0,"",trangthai);

		String errorString = null;

		try {
			DBUtils.updateTieuChiDangKy(conn,tieuchi);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Nếu có lỗi forward sang trang báo lỗi.
		if (errorString != null) {
			// Lưu thông tin vào request attribute trước khi forward sang views.
			request.setAttribute("errorString", errorString);
			request.setAttribute("tieuchi", tieuchi);
			//
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/views/dangkyTieuChiError.jsp");
			dispatcher.forward(request, response);
		}
		// Nếu mọi thứ tốt đẹp.
		// Redirect sang trang danh sách KPI.
		else { 
//			response.sendRedirect(request.getContextPath() + "/DangKyKPI");
			response.sendRedirect(request.getContextPath() +"/doDangKyKPI?mabieumau="+mabieumau);
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
