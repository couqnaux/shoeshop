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
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dangnhapController() {
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
			// lay ve un, pass
			String th = request.getParameter("th");
			String un = request.getParameter("txtun");
			String pass = request.getParameter("txtpass");

			if (th != null) {
				khachhangBo khbo = new khachhangBo();
				khachhangBean kh = khbo.ktdn(un, pass);
				if (kh != null) {
					HttpSession session = request.getSession();
					session.setAttribute("dn", kh);
					response.sendRedirect("trangchuController");
				} else {
					request.setAttribute("kt", "dns");
				}
			}
			RequestDispatcher rddangnhap = request.getRequestDispatcher("dangnhap.jsp");
			rddangnhap.forward(request, response);
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
