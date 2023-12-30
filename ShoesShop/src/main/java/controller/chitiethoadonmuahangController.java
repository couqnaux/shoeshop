package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.chitiethoadonmuahangBo;

/**
 * Servlet implementation class lichsumuahangController
 */
@WebServlet("/lichsumuahangController")
public class chitiethoadonmuahangController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public chitiethoadonmuahangController() {
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
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			HttpSession session = request.getSession();
			//khachhangBean kh = (khachhangBean) session.getAttribute("dn");
			if (session.getAttribute("dn") == null) {
				response.sendRedirect("dangnhapController");
			} else {
				String mahd = request.getParameter("mahd");
				if (mahd != null) {
					chitiethoadonmuahangBo lsbo = new chitiethoadonmuahangBo();
					request.setAttribute("dscthd", lsbo.getChiTietHoaDon(Long.parseLong(mahd)));
				}
				request.setAttribute("mahd", mahd);
			}
			RequestDispatcher rd = request.getRequestDispatcher("chitiethoadonmuahang.jsp");
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
