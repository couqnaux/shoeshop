package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bo.hoadonmuahangBo;

/**
 * Servlet implementation class adminxacnhanhoadonController
 */
@WebServlet("/adminxacnhanhoadonController")
public class adminxacnhanhoadonController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminxacnhanhoadonController() {
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
			hoadonmuahangBo hdmhbo = new hoadonmuahangBo();

			String mahd = request.getParameter("mahd");
			if (mahd != null)
				hdmhbo.xacNhanHoaDon(Long.parseLong(mahd));
			request.setAttribute("dsHoaDon", hdmhbo.getTatCaHoaDon());

			RequestDispatcher rd = request.getRequestDispatcher("adminxacnhanhoadon.jsp");
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
