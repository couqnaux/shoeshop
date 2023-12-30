package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.chitietgiayBean;
import bo.chitietgiayBo;
import bo.giohangBo;

/**
 * Servlet implementation class giohangController
 */
@WebServlet("/giohangController")
public class giohangController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public giohangController() {
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

			// Lay tu chitietgiay.jsp
			String mgmua = request.getParameter("mg");
			String slmua = request.getParameter("txtsl");
			String sizemua = request.getParameter("txtsize");

			// Lay tu giohang.jsp
			String slsua = request.getParameter("qty");
			String mgsua = request.getParameter("mgsua");
			String sizesua = request.getParameter("sizesua");

			String mgxoa = request.getParameter("mgxoa");
			String sizexoa = request.getParameter("sizexoa");

			// String xoatatca = request.getParameter("xoatatca");

			//String xoachon = request.getParameter("xoachon");
			String[] giaychon = request.getParameterValues("giaychon");

			HttpSession session = request.getSession();
			giohangBo gh = (giohangBo) session.getAttribute("gh");

			if (gh == null) {
				gh = new giohangBo();
				session.setAttribute("gh", gh);
			}

			if (mgmua != null && slmua != null && sizemua != null) {
				// Tim thong tin cua doi giay
				chitietgiayBo ctgbo = new chitietgiayBo();
				chitietgiayBean giay = ctgbo.getGiay(Long.parseLong(mgmua));

				// gh.Them(giay, soLuong, size);
				gh.them(giay, sizemua, Long.parseLong(slmua));
				response.sendRedirect("giohangController");

			} else if (mgsua != null && slsua != null && sizesua != null) {
				gh.sua(Long.parseLong(mgsua), Long.parseLong(slsua), sizesua);
				response.sendRedirect("giohangController");
			} else if (mgxoa != null & sizexoa != null) {
				gh.xoa(Long.parseLong(mgxoa), sizexoa);
				response.sendRedirect("giohangController");
			}
//			else if (xoatatca != null) {
//				gh.xoaTatCa();
//				response.sendRedirect("giohangController");
//			} 
			else if (giaychon != null) {
				gh.xoaChon(giaychon);
				response.sendRedirect("giohangController");
			}

//			String mgg = request.getParameter("mgg");
//			magiamgiaBo mggbo = new magiamgiaBo();
//			magiamgiaBean mggia = mggbo.getmgg(mgg);
//			if (mggia != null) {
//				Date ngayhientai = new Date();
//				if (ngayhientai.before(mggia.getHieuluc()) || ngayhientai.equals(mggia.getHieuluc())) {
//					request.setAttribute("phantram", mggia.getPhantram());
//					request.setAttribute("mgg", mggia.getMagiamgia());
//				} 
//			}

			RequestDispatcher rd = request.getRequestDispatcher("giohang.jsp");
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
