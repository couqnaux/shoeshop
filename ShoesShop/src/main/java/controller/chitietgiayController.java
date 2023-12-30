package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.chitietgiayBean;
import bo.chitietgiayBo;

/**
 * Servlet implementation class chitietgiayController
 */
@WebServlet("/chitietgiayController")
public class chitietgiayController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public chitietgiayController() {
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
			String magiay = request.getParameter("id");
			chitietgiayBo ctgbo = new chitietgiayBo();
			chitietgiayBean giay = ctgbo.getGiay(Long.parseLong(magiay));
			request.setAttribute("giay", giay);
			request.setAttribute("dsSize", ctgbo.getAllSize(Long.parseLong(magiay)));
			RequestDispatcher rd = request.getRequestDispatcher("chitietgiay.jsp");
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
