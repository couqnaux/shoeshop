package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.admindangnhapBean;
import bo.admindangnhapBo;
import nl.captcha.Captcha;

/**
 * Servlet implementation class admindangnhapController
 */
@WebServlet("/admindangnhapController")
public class admindangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admindangnhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");// client gui len sever bang utf8-
			response.setCharacterEncoding("utf-8");// sever gui lai client bang utf8-

			String th = request.getParameter("th");
			String un = request.getParameter("txtun");
			String pass = request.getParameter("txtpass");
			HttpSession session = request.getSession();
			if (session.getAttribute("loginAttempts") == null)
				session.setAttribute("loginAttempts", 0);

			int loginAttempts = (int) session.getAttribute("loginAttempts");
			boolean flagLoginAttempts = true;

			if (loginAttempts >= 3) {
				Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
				request.setCharacterEncoding("UTF-8");
				String answer = request.getParameter("answer");
				if (answer == null)
					response.sendRedirect("admindangnhapController");
				else if (captcha.isCorrect(answer)) {
					flagLoginAttempts = true;

				} else {
					flagLoginAttempts = false;
				}
			}

			if (th != null) {
				admindangnhapBo adminbo = new admindangnhapBo();
				admindangnhapBean adminbean = adminbo.ktdn(un, pass);
				if (adminbean != null && flagLoginAttempts) {
					// HttpSession session = request.getSession();
					session.setAttribute("dn", adminbean);
					session.removeAttribute("loginAttempts");
					response.sendRedirect("admintrangchuController");
				} else {
					request.setAttribute("kt", "Login failed");
					loginAttempts = (int) session.getAttribute("loginAttempts") + 1;
					System.out.println(loginAttempts);
					session.setAttribute("loginAttempts", loginAttempts);
				}
			}

			RequestDispatcher rddangnhap = request.getRequestDispatcher("admindangnhap.jsp");
			rddangnhap.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
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
