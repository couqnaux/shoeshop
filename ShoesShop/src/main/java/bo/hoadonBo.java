package bo;

import dao.hoadonDao;

public class hoadonBo {
	hoadonDao hdDao = new hoadonDao();

	public int Them(long makh) throws Exception {
		return hdDao.Them(makh);
	}

	public long getMaxHD() throws Exception {
		return hdDao.getMaxHD();
	}
}
