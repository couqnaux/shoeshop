package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.magiamgiaBean;

public class magiamgiaDao {
	public magiamgiaBean getmgg(String magiamgia) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "select * from magiamgia where magiamgia = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setString(1, magiamgia);
		ResultSet rs = cmd.executeQuery();
		magiamgiaBean mgg = null;
		if (rs.next()) {
			mgg = new magiamgiaBean(rs.getString("magiamgia"), rs.getInt("phantram"), rs.getDate("hieuluc"));
		}
		rs.close();
		kn.cn.close();
		return mgg;
	}
}
