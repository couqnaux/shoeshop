package bo;

import java.util.ArrayList;

import bean.chitietgiayBean;
import dao.chitietgiayDao;

public class chitietgiayBo {
	chitietgiayDao ctgdao = new chitietgiayDao();

	public chitietgiayBean getGiay(long ma) throws Exception {
		return ctgdao.getGiay(ma);
	}

	public ArrayList<String> getAllSize(long magiay) throws Exception {
		return ctgdao.getAllSize(magiay);
	}
}
