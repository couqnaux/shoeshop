package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangBean;
import bean.khachhangBean;
import bo.chitiethoadonBo;
import bo.giohangBo;
import bo.hoadonBo;

/**
 * Servlet implementation class xacnhanController
 */
@WebServlet("/xacnhanController")
public class xacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public xacnhanController() {
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
			// kiem tra dang nhap
			HttpSession session = request.getSession();
			khachhangBean kh = (khachhangBean) session.getAttribute("dn");
			if (session.getAttribute("dn") == null) {
				response.sendRedirect("dangnhapController");
			} else {
				hoadonBo hdbo = new hoadonBo();
				chitiethoadonBo cthdbo = new chitiethoadonBo();
				// Tao ra 1 hoa don
				giohangBo gh = (giohangBo) session.getAttribute("gh");
				//String giamgia = request.getParameter("giamgia");
				if (gh.ds.size() != 0)
					hdbo.Them(kh.getMakh());
				else response.sendRedirect("giayController");
				long maxhd = hdbo.getMaxHD();
				for (giohangBean h : gh.ds) {
					cthdbo.Them(h.getMagiay(), h.getSize(), h.getSoluongmua(), maxhd);
				}
				//System.out.print(giamgia);
				session.removeAttribute("gh");
			}
			RequestDispatcher rd = request.getRequestDispatcher("xacnhan.jsp");
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
