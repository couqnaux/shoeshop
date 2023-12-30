package bo;


import bean.khachhangBean;
import dao.khachhangDao;

public class khachhangBo {
	khachhangDao khdao = new khachhangDao();

	public khachhangBean ktdn(String tendn, String pass) throws Exception {
		return khdao.ktdn(tendn, pass);
	}

	public boolean tontai(String tendn) throws Exception {
		return khdao.tontai(tendn);
	}

	public void dangky(String hoten, String diachi, String sodt, String email, String tendn, String pass)
			throws Exception {
		khdao.dangky(hoten, diachi, sodt, email, tendn, pass);
	}

	public void doimatkhau(String tendn, String mkcu, String mkmoi) throws Exception {
		khdao.doimatkhau(tendn, mkcu, mkmoi);
	}
	
	public void doithongtin(String tendn, String hoten, String diachi, String sodt, String email) throws Exception {
		khdao.doithongtin(tendn, hoten, diachi, sodt, email);
	}
	
	/*
	 * public khachhangBean getthongtin(long makh) throws Exception { return
	 * khdao.getthongtin(makh); }
	 */
}
