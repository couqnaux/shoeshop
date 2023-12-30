package bo;

import java.util.ArrayList;

import bean.loaiBean;
import dao.giayDao;
import dao.loaiDao;

public class loaiBo {
	loaiDao ldao = new loaiDao();
	public ArrayList<loaiBean> getAll() throws Exception {
		return ldao.getAll();
	}
	
	public int countByLoai(String magiay) throws Exception {
		giayDao gdao = new giayDao();
		return gdao.countByLoai(magiay);
	}
}
