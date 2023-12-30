package bo;

import java.util.ArrayList;

import bean.adminxacnhanBean;
import dao.chitiethoadonDao;

public class chitiethoadonBo {
	chitiethoadonDao cthdDao = new chitiethoadonDao();

	public int Them(long magiay, String tensize, long soluongmua, long mahd) throws Exception {
		return cthdDao.Them(magiay, tensize, soluongmua, mahd);
	}

	public ArrayList<adminxacnhanBean> getxacnhan() throws Exception {
		return cthdDao.getxacnhan();
	}

	public int XacNhan(long macthd) throws Exception {
		return cthdDao.XacNhan(macthd);
	}
}
