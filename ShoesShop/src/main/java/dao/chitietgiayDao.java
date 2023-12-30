package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.chitietgiayBean;

public class chitietgiayDao {
	
	//Lay tat ca thong tin cua 1 doi giay
	public chitietgiayBean getGiay(long ma) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from chitietgiayView where magiay = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, ma);
		ResultSet rs = cmd.executeQuery();
		if (rs.next()) {
			long magiay = rs.getLong("magiay");
			String anh = rs.getString("anh");
			String tengiay = rs.getString("tengiay");
			String mota = rs.getString("mota");
			String maloai = rs.getString("maloai");
			long gia = rs.getLong("gia");
			return new chitietgiayBean(magiay, anh, tengiay, mota, maloai, gia);
		}
		rs.close();
		kn.cn.close();
		return null;
	}
	
	
	//Lay tat ca size hien co cua magiay
	public ArrayList<String> getAllSize(long magiay) throws Exception {
		ArrayList<String> ds = new ArrayList<String>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from chitietgiayView where magiay = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, magiay);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String tensize = rs.getString("tensize");
			ds.add(tensize);
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
}
