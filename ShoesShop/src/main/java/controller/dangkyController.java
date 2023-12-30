package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.khachhangBo;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dangkyController() {
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

			String hoten = request.getParameter("txtht");
			String diachi = request.getParameter("txtdc");
			String sodt = request.getParameter("txtsdt");
			String email = request.getParameter("txtem");
			String tendn = request.getParameter("txtun");
			String pass = request.getParameter("txtpass");
			String repass = request.getParameter("txtrepass");
			String th = request.getParameter("th");

			if (th != null) {
				if (!pass.equalsIgnoreCase(repass)) {
					request.setAttribute("mess", "Password incorrect");
				} else {
					khachhangBo khbo = new khachhangBo();

					if (!khbo.tontai(tendn)) {
						khbo.dangky(hoten, diachi, sodt, email, tendn, pass);
						response.sendRedirect("dangnhapController");
					} else {
						request.setAttribute("mess", "Account already exists");
					}
				}
			}
			RequestDispatcher rd = request.getRequestDispatcher("dangky.jsp");
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
