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
 * Servlet implementation class doithongtinController
 */
@WebServlet("/doithongtinController")
public class doithongtinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public doithongtinController() {
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
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");

			HttpSession session = request.getSession();
			khachhangBean kh = (khachhangBean) session.getAttribute("dn");
			if (session.getAttribute("dn") == null) {
				response.sendRedirect("dangnhapController");
				return;
			}

			khachhangBo khBo = new khachhangBo();
			String hoten = request.getParameter("hoten");
			String diachi = request.getParameter("diachi");
			String sodt = request.getParameter("sodt");
			String email = request.getParameter("email");
			String th = request.getParameter("th");

			if (th != null) {
				khBo.doithongtin(kh.getTendn(), hoten, diachi, sodt, email);
				kh = khBo.ktdn(kh.getTendn(), kh.getPass());
				session.setAttribute("dn", kh);
				response.sendRedirect("doithongtinController");
			}

			RequestDispatcher rd = request.getRequestDispatcher("doithongtin.jsp");
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
