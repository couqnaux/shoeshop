package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaiBean;

public class loaiDao {
	public ArrayList<loaiBean> getAll() throws Exception {
		ArrayList<loaiBean> ds = new ArrayList<loaiBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "select * from loai";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String maloai = rs.getString("maloai");
			String tenloai = rs.getString("tenloai");
			ds.add(new loaiBean(maloai, tenloai));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
}
