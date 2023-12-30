package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.hoadonmuhangBean;

public class hoadonmuahangDao {
	public ArrayList<hoadonmuhangBean> getHoaDonChuaMua(long makh) throws Exception {
		ArrayList<hoadonmuhangBean> ds = new ArrayList<hoadonmuhangBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from View_hoadonmuahang where makh=? and damua = 0";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long mahd = rs.getLong("mahd");
			Date ngaymua = rs.getDate("ngaymua");
			long soluongmua = rs.getLong("soluongmua");
			long tongtien = rs.getLong("tongtien");
			boolean damua = rs.getBoolean("damua");
			ds.add(new hoadonmuhangBean(mahd, ngaymua, soluongmua, tongtien, makh, damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	public ArrayList<hoadonmuhangBean> getHoaDonDaMua(long makh) throws Exception {
		ArrayList<hoadonmuhangBean> ds = new ArrayList<hoadonmuhangBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from View_hoadonmuahang where makh=? and damua = 1";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long mahd = rs.getLong("mahd");
			Date ngaymua = rs.getDate("ngaymua");
			long soluongmua = rs.getLong("soluongmua");
			long tongtien = rs.getLong("tongtien");
			boolean damua = rs.getBoolean("damua");
			ds.add(new hoadonmuhangBean(mahd, ngaymua, soluongmua, tongtien, makh, damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	//get tat ca hoa don can xac nhan
	public ArrayList<hoadonmuhangBean> getTatCaHoaDon() throws Exception {
		ArrayList<hoadonmuhangBean> ds = new ArrayList<hoadonmuhangBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from View_hoadonmuahang where damua = 0";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long mahd = rs.getLong("mahd");
			Date ngaymua = rs.getDate("ngaymua");
			long soluongmua = rs.getLong("soluongmua");
			long tongtien = rs.getLong("tongtien");
			long makh = rs.getLong("makh");
			boolean damua = rs.getBoolean("damua");
			ds.add(new hoadonmuhangBean(mahd, ngaymua, soluongmua, tongtien, makh, damua));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	//Xác nhận 1 hóa đơn thành đã mua thì tất cả các chi tiết hóa đơn của hóa đơn đó cũng thành đã mua
	public int xacNhanHoaDon(long mahd) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "update hoadon set damua=1 where mahd = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setLong(1, mahd);
		int kq = cmd.executeUpdate();
		kn.cn.close();
		return kq;
	}
}
