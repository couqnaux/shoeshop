package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;


public class hoadonDao {
	public int Them(long makh) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "insert into hoadon(makh, ngaymua, damua) values(?, ?, 0)";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setLong(1, makh);
		Date n1 = new Date(); // Lay ngay gio hien tai
		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		String st = dd.format(n1);
		Date n2 = dd.parse(st);
		cmd.setDate(2, new java.sql.Date(n2.getTime()));
		int kq = cmd.executeUpdate();
		kn.cn.close();
		return kq;
	}

	public long getMaxHD() throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select max(mahd) as maxhd from hoadon";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		long max = 0;
		if (rs.next()) {
			max = rs.getLong("maxhd");
		}
		rs.close();
		kn.cn.close();
		return max;
	}

	public int xacNhanHoaDon(long macthd) throws Exception {
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
