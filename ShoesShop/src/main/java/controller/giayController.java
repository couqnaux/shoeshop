package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.giayBean;
import bo.giayBo;
import bo.loaiBo;

/**
 * Servlet implementation class giayController
 */
@WebServlet("/giayController")
public class giayController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public giayController() {
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
			giayBo gbo = new giayBo();
			loaiBo lbo = new loaiBo();
			request.setAttribute("lbo", lbo);
			int totalGiay = 0;
			int totalPage = 0;
			int pageSize = 6;

			ArrayList<giayBean> dsgiay = new ArrayList<>();

			String brand = request.getParameter("brand");// Tim theo brand

			String key = request.getParameter("key");// Tim kiem chung

			String sortBy = request.getParameter("sort");
			if (sortBy == null)
				sortBy = "default";

			int index = 1;

			if (brand != null) {
				request.setAttribute("brand", brand);
				totalGiay = gbo.countByLoai(brand);
				totalPage = totalGiay / pageSize;
				if (totalGiay % pageSize != 0) {
					totalPage++;
				}
				if (request.getParameter("page") != null) {
					index = Integer.parseInt(request.getParameter("page"));
				}
				if (sortBy.equals("asc")) {
					dsgiay = gbo.pagingByLoaiAndLowPrice(index, pageSize, brand);
				} else if (sortBy.equals("desc")) {
					dsgiay = gbo.pagingByLoaiAndHighPrice(index, pageSize, brand);
				} else
					dsgiay = gbo.pagingByLoai(index, pageSize, brand);
			} else if (key != null) {
				request.setAttribute("key", key);
				totalGiay = gbo.countByTen(key);
				totalPage = totalGiay / pageSize;
				if (totalGiay % pageSize != 0) {
					totalPage++;
				}
				if (request.getParameter("page") != null) {
					index = Integer.parseInt(request.getParameter("page"));
				}
				if (sortBy.equals("asc")) {
					dsgiay = gbo.pagingByTenAndLowPrice(index, pageSize, key);
				} else if (sortBy.equals("desc")) {
					dsgiay = gbo.pagingByTenAndHighPrice(index, pageSize, key);
				} else
					dsgiay = gbo.pagingByTen(index, pageSize, key);
			} else {
				totalGiay = gbo.countAll();
				totalPage = totalGiay / pageSize;
				if (totalGiay % pageSize != 0) {
					totalPage++;
				}
				if (request.getParameter("page") != null) {
					index = Integer.parseInt(request.getParameter("page"));
				}
				if (sortBy.equals("asc")) {
					dsgiay = gbo.pagingAllAndLowPrice(index, pageSize);
				} else if (sortBy.equals("desc")) {
					dsgiay = gbo.pagingAllAndHighPrice(index, pageSize);
				} else {
					dsgiay = gbo.pagingAll(index, pageSize);
				}
			}

//			else {
//				totalGiay = gbo.countAll();
//				totalPage = totalGiay / pageSize;
//				if (totalGiay % pageSize != 0) {
//					totalPage++;
//				}
//				if (request.getParameter("page") != null) {
//					index = Integer.parseInt(request.getParameter("page"));
//				}
//				dsgiay = gbo.pagingAll(index, pageSize);
//			}

//			totalPage = totalGiay / pageSize;
//			if (totalGiay % pageSize != 0) {
//				totalPage++;
//			}
//			if (request.getParameter("page") != null) {
//				index = Integer.parseInt(request.getParameter("page"));
//			}

			request.setAttribute("sort", sortBy);
			request.setAttribute("results", totalGiay);
			request.setAttribute("currentPage", index);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("dsloai", lbo.getAll());
			request.setAttribute("dsgiay", dsgiay);

			RequestDispatcher rd = request.getRequestDispatcher("shop.jsp");
			rd.forward(request, response);
		} catch (

		Exception e) {
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
