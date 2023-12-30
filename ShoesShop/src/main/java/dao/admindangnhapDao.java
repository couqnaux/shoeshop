package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.admindangnhapBean;

public class admindangnhapDao {
	public admindangnhapBean ktdn(String tendn, String pass) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "select * from dangnhap where tendn = ? and pass = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setString(1, tendn);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		admindangnhapBean admin = null;
		if (rs.next()) {
			boolean quyen = rs.getBoolean("Quyen");
			admin = new admindangnhapBean(tendn, pass, quyen);
		}
		rs.close();
		kn.cn.close();
		return admin;
	}
}
