package bo;

import java.util.ArrayList;

import bean.hoadonmuhangBean;
import dao.hoadonmuahangDao;

public class hoadonmuahangBo {

	hoadonmuahangDao hdmhDao = new hoadonmuahangDao();

	public ArrayList<hoadonmuhangBean> getHoaDonChuaMua(long makh) throws Exception {
		return hdmhDao.getHoaDonChuaMua(makh);
	}

	public ArrayList<hoadonmuhangBean> getHoaDonDaMua(long makh) throws Exception {
		return hdmhDao.getHoaDonDaMua(makh);
	}
	
	public ArrayList<hoadonmuhangBean> getTatCaHoaDon() throws Exception {
		return hdmhDao.getTatCaHoaDon();
	}
	
	public int xacNhanHoaDon(long mahd) throws Exception {
		return hdmhDao.xacNhanHoaDon(mahd);
	}
}
