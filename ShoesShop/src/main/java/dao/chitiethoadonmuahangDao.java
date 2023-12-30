package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.chitiethoadonmuahangBean;

public class chitiethoadonmuahangDao {

	// khachhang
	public ArrayList<chitiethoadonmuahangBean> getChiTietHoaDon(long mahd) throws Exception {
		ArrayList<chitiethoadonmuahangBean> ds = new ArrayList<chitiethoadonmuahangBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from View_chitiethoadonmuahang where mahd=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long macthd = rs.getLong("macthd");
			long magiay = rs.getLong("magiay");
			String tengiay = rs.getString("tengiay");
			String size = rs.getString("size");
			long soluongmua = rs.getLong("soluongmua");
			long gia = rs.getLong("gia");
			long thanhtien = rs.getLong("thanhtien");
			boolean damua = rs.getBoolean("damua");
			ds.add(new chitiethoadonmuahangBean(macthd, magiay, tengiay, size, soluongmua, gia, thanhtien, mahd,
					damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	// admin
	public ArrayList<chitiethoadonmuahangBean> getChiTietHoaDonChuaXacNhan(long mahd) throws Exception {
		ArrayList<chitiethoadonmuahangBean> ds = new ArrayList<chitiethoadonmuahangBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from View_chitiethoadonmuahang where mahd=? and damua = 0";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mahd);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long macthd = rs.getLong("macthd");
			long magiay = rs.getLong("magiay");
			String tengiay = rs.getString("tengiay");
			String size = rs.getString("size");
			long soluongmua = rs.getLong("soluongmua");
			long gia = rs.getLong("gia");
			long thanhtien = rs.getLong("thanhtien");
			boolean damua = rs.getBoolean("damua");
			ds.add(new chitiethoadonmuahangBean(macthd, magiay, tengiay, size, soluongmua, gia, thanhtien, mahd,
					damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	public int xacNhanChiTietHoaDon(long macthd) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "update chitiethoadon set damua=1 where macthd = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setLong(1, macthd);
		int kq = cmd.executeUpdate();
		kn.cn.close();
		return kq;
	}

	public void updateHoaDon() throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "updateHoaDon";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.executeUpdate();
		kn.cn.close();
	}
}
