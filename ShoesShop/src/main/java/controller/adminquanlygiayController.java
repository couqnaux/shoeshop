package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bo.giayBo;
import bo.loaiBo;

/**
 * Servlet implementation class adminquanlygiayController
 */
@WebServlet("/adminquanlygiayController")
public class adminquanlygiayController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminquanlygiayController() {
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

			//DiskFileItemFactory factory = new DiskFileItemFactory();
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
			String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "img/product";
			response.getWriter().println(dirUrl1);

			loaiBo lbo = new loaiBo();
			request.setAttribute("dsloai", lbo.getAll());

			giayBo gbo = new giayBo();
			request.setAttribute("dsgiay", gbo.getAllGiay());

			String mgsua = request.getParameter("mgsua");
			if (mgsua != null) {
				request.setAttribute("giay", gbo.getGiay(Long.parseLong(mgsua)));
			}

			String mgxoa = request.getParameter("mgxoa");
			if (mgxoa != null) {
				gbo.Xoa(Long.parseLong(mgxoa));
				request.setAttribute("dsgiay", gbo.getAllGiay());
			}

			if (request.getContentLength() <= 0) {// Chay lan dau
				RequestDispatcher rd = request.getRequestDispatcher("adminquanlygiay.jsp");
				rd.forward(request, response);
				return;
			}
			String mg = null;
			String tg = null;
			String sl = null;
			String gia = null;
			String ml = null;
			String anh = null;
			String nn = null;
			String mt = null;

			String btnAdd = null;
			String btnSave = null;

			List<FileItem> fileItems = upload.parseRequest(request);
			for (FileItem fileItem : fileItems) {
				if (!fileItem.isFormField()) {
					String nameimg = fileItem.getName();
					if (!nameimg.equals("")) {
						String dirUrl = request.getServletContext().getRealPath("") + File.separator + "img/product";
						File dir = new File(dirUrl);
						if (!dir.exists()) {
							dir.mkdir();
						}
						String fileImg = dirUrl + File.separator + nameimg;
						anh = "img/product/" + nameimg;
						File file = new File(fileImg);
						try {
							fileItem.write(file);// lưu file
							System.out.println("UPLOAD THÀNH CÔNG...!");
							System.out.println("Đường dẫn lưu file là: " + dirUrl);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				} else// Neu la control
				{

					String tentk = fileItem.getFieldName();

					if (tentk.equals("mg")) {
						mg = fileItem.getString();
					}

					if (tentk.equals("tg")) {
						tg = fileItem.getString();
					}
					if (tentk.equals("sl")) {
						sl = fileItem.getString();
					}
					if (tentk.equals("gia")) {
						gia = fileItem.getString();
					}
					if (tentk.equals("ml")) {
						ml = fileItem.getString();
					}
					if (tentk.equals("anh")) {
						anh = fileItem.getString();
					}

					if (tentk.equals("nn")) {
						nn = fileItem.getString();
					}

					if (tentk.equals("mt")) {
						mt = fileItem.getString();
					}

					if (tentk.equals("btnAdd")) {
						btnAdd = fileItem.getString();
						System.out.println(btnAdd);
					}

					if (tentk.equals("btnSave")) {
						System.out.println(btnSave);
						btnSave = fileItem.getString();
					}

				}
			}

			if (btnAdd != null) {
				gbo.Them(tg, Long.parseLong(sl), Long.parseLong(gia), ml, anh, nn, mt);
			} else if (btnSave != null) {
				gbo.Sua(Long.parseLong(mg), tg, Long.parseLong(sl), Long.parseLong(gia), ml, anh, nn, mt);
			}

			request.setAttribute("dsgiay", gbo.getAllGiay());
			RequestDispatcher rd = request.getRequestDispatcher("adminquanlygiay.jsp");
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
