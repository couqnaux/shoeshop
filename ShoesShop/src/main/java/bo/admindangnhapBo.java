package bo;

import bean.admindangnhapBean;
import dao.admindangnhapDao;

public class admindangnhapBo {
	admindangnhapDao adDao = new admindangnhapDao();

	public admindangnhapBean ktdn(String tendn, String pass) throws Exception {
		return adDao.ktdn(tendn, pass);
	}

}
