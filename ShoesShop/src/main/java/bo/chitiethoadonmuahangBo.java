package bo;

import java.util.ArrayList;

import bean.chitiethoadonmuahangBean;
import dao.chitiethoadonmuahangDao;

public class chitiethoadonmuahangBo {
	chitiethoadonmuahangDao cthdDao = new chitiethoadonmuahangDao();

	public ArrayList<chitiethoadonmuahangBean> getChiTietHoaDon(long mahd) throws Exception {
		return cthdDao.getChiTietHoaDon(mahd);
	}

	public ArrayList<chitiethoadonmuahangBean> getChiTietHoaDonChuaXacNhan(long mahd) throws Exception {
		return cthdDao.getChiTietHoaDonChuaXacNhan(mahd);
	}

	public int xacNhanChiTietHoaDon(long macthd) throws Exception {
		return cthdDao.xacNhanChiTietHoaDon(macthd);
	}
	
	public void updateHoaDon() throws Exception {
		cthdDao.updateHoaDon();
	}
}
