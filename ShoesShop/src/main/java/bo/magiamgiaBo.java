package bo;

import bean.magiamgiaBean;
import dao.magiamgiaDao;

public class magiamgiaBo {
	magiamgiaDao mggDao = new magiamgiaDao();

	public magiamgiaBean getmgg(String magiamgia) throws Exception {
		return mggDao.getmgg(magiamgia);
	}
}
