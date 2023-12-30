package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.adminxacnhanBean;

public class chitiethoadonDao {
	public int Them(long magiay, String tensize, long soluongmua, long mahd) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "insert into chitiethoadon(magiay, size, soluongmua, mahd, damua) values(?, ?, ?, ?, 0)";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setLong(1, magiay);
		cmd.setString(2, tensize);
		cmd.setLong(3, soluongmua);
		cmd.setLong(4, mahd);
		int kq = cmd.executeUpdate();
		kn.cn.close();
		return kq;
	}

	public ArrayList<adminxacnhanBean> getxacnhan() throws Exception {
		ArrayList<adminxacnhanBean> ds = new ArrayList<adminxacnhanBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from View_adminxacnhan";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long machitiethd = rs.getLong(1);
			String hoten = rs.getString(2);
			String tengiay = rs.getString(3);
			String size = rs.getString(4);
			long gia = rs.getLong(5);
			long soluongmua = rs.getLong(6);
			long thanhtien = rs.getLong(7);
			boolean damua = rs.getBoolean(8);
			ds.add(new adminxacnhanBean(machitiethd, hoten, tengiay, size, gia, soluongmua, thanhtien, damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	public int XacNhan(long macthd) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "update ChiTietHoaDon set damua=1 where MaChiTietHD = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setLong(1, macthd);
		int kq = cmd.executeUpdate();
		kn.cn.close();
		return kq;
	}
}
