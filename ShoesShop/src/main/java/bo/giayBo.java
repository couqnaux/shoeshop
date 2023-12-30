package bo;

import java.util.ArrayList;

import bean.giayBean;
import dao.giayDao;

public class giayBo {
	giayDao gdao = new giayDao();

	public ArrayList<giayBean> getAllGiay() throws Exception {
		return gdao.getAllGiay();
	}

//	public ArrayList<giayBean> getGiayByPage(int pageNumber, int pageSize) throws Exception {
//		return gDao.getGiayByPage(pageNumber, pageSize);
//	}
	
	
	// Tong so giay
	public int countAll() throws Exception {
		return gdao.countAll();
	}

	public int countByTen(String tengiay) throws Exception {
		return gdao.countByTen(tengiay);
	}

	public int countByLoai(String loaigiay) throws Exception {
		return gdao.countByLoai(loaigiay);
	}

//	public int countBySize(String size) throws Exception {
//		return gdao.countBySize(size);
//	}

	// Phan trang all
	public ArrayList<giayBean> pagingAll(int index, int size) throws Exception {
		return gdao.pagingAll(index, size);
	}
	
	public ArrayList<giayBean> pagingAllAndLowPrice(int index, int size) throws Exception {
		return gdao.pagingAllAndLowPrice(index, size);
	}
	
	public ArrayList<giayBean> pagingAllAndHighPrice(int index, int size) throws Exception {
		return gdao.pagingAllAndHighPrice(index, size);
	}
	
	// Phan trang co dieu kien
	//Phan trang theo ten
	public ArrayList<giayBean> pagingByTen(int index, int size, String tengiay) throws Exception {
		return gdao.pagingByTen(index, size, tengiay);
	}
	
	public ArrayList<giayBean> pagingByTenAndLowPrice(int index, int size, String tengiay) throws Exception {
		return gdao.pagingByTenAndLowPrice(index, size, tengiay);
	}
	
	public ArrayList<giayBean> pagingByTenAndHighPrice(int index, int size, String tengiay) throws Exception {
		return gdao.pagingByTenAndHighPrice(index, size, tengiay);
	}
	
	//Phan trang theo loai
	public ArrayList<giayBean> pagingByLoai(int index, int size, String maloai) throws Exception {
		return gdao.pagingByLoai(index, size, maloai);
	}
	
	public ArrayList<giayBean> pagingByLoaiAndLowPrice(int index, int size, String maloai) throws Exception {
		return gdao.pagingByLoaiAndLowPrice(index, size, maloai);
	}
	
	public ArrayList<giayBean> pagingByLoaiAndHighPrice(int index, int size, String maloai) throws Exception {
		return gdao.pagingByLoaiAndHighPrice(index, size, maloai);
	}
	
	public ArrayList<giayBean> slideGiayTrangChu() throws Exception {
		return gdao.slideGiayTrangChu();
	}
	
	public ArrayList<giayBean> latestProducts() throws Exception {
		return gdao.latestProducts();
	}
	
	public int Them(String tengiay, long soluong, long gia, String maloai, String anh, String ngaynhap,
			String mota) throws Exception {
		return gdao.Them(tengiay, soluong, gia, maloai, anh, ngaynhap, mota);
	}
	
	public void Xoa(long magiay) throws Exception {
		gdao.Xoa(magiay);
	}
	
	public giayBean getGiay(long magiay) throws Exception {
		return gdao.getGiay(magiay);
	}
	
	public void Sua(long magiay, String tengiay, long soluong, long gia, String maloai, String anh, String ngaynhap,
			String mota) throws Exception {
		gdao.Sua(magiay, tengiay, soluong, gia, maloai, anh, ngaynhap, mota);
	}
}
