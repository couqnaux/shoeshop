package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.chitiethoadonmuahangBo;
import bo.hoadonmuahangBo;

/**
 * Servlet implementation class adminxacnhanchitiethoadonController
 */
@WebServlet("/adminxacnhanchitiethoadonController")
public class adminxacnhanchitiethoadonController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminxacnhanchitiethoadonController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			chitiethoadonmuahangBo cthdbo = new chitiethoadonmuahangBo();
			String mahd = request.getParameter("mahd");
			if (mahd != null) {
				request.setAttribute("dscthd", cthdbo.getChiTietHoaDonChuaXacNhan(Long.parseLong(mahd)));
			}
			request.setAttribute("mahd", mahd);

			String macthd = request.getParameter("macthd");
			if (macthd != null) {
				cthdbo.xacNhanChiTietHoaDon(Long.parseLong(macthd));
				//cthdbo.updateHoaDon();
				String hd = request.getParameter("mahd");
				if (cthdbo.getChiTietHoaDonChuaXacNhan(Long.parseLong(mahd)).size() == 0) {
					hoadonmuahangBo hdbo = new hoadonmuahangBo();
					hdbo.xacNhanHoaDon(Long.parseLong(hd));
					response.sendRedirect("adminxacnhanhoadonController");
				} else
					response.sendRedirect("adminxacnhanchitiethoadonController?mahd=" + hd);
			}
//			String s = "adminxacnhanchitiethoadonController?mahd=" + mahd;

//			if (cthdbo.getChiTietHoaDonChuaXacNhan(Long.parseLong(mahd)).size() == 0) {
//				hoadonmuahangBo hdbo = new hoadonmuahangBo();
//				hdbo.xacNhanHoaDon(Long.parseLong(mahd));
//				response.sendRedirect("adminxacnhanhoadonController");
//			}
			RequestDispatcher rd = request.getRequestDispatcher("adminxacnhanchitiethoadon.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
