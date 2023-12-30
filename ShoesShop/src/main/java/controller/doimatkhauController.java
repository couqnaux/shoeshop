package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangBean;
import bo.khachhangBo;

/**
 * Servlet implementation class doimatkhauController
 */
@WebServlet("/doimatkhauController")
public class doimatkhauController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public doimatkhauController() {
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
			// Gui cau hinh gui len va lay ve utf-8
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");

			String mkcu = request.getParameter("mkcu");
			String mkmoi = request.getParameter("mkmoi");
			String remkmoi = request.getParameter("remkmoi");
			String th = request.getParameter("th");

			khachhangBo khbo = new khachhangBo();
			HttpSession session = request.getSession();
			khachhangBean kh = (khachhangBean) session.getAttribute("dn");
			if (th != null) {
				if (!remkmoi.equalsIgnoreCase(mkmoi) || !mkcu.equalsIgnoreCase(kh.getPass())
						|| mkcu.equalsIgnoreCase(mkmoi)) {
					request.setAttribute("loi", "thatbai");
					response.sendRedirect("doimatkhauController");
				} else {
					khbo.doimatkhau(kh.getTendn(), mkcu, mkmoi);
					session.removeAttribute("dn");
					response.sendRedirect("dangnhapController");

				}
			}
			RequestDispatcher rd = request.getRequestDispatcher("doimatkhau.jsp");
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
