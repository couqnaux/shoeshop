package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import bean.giayBean;

public class giayDao {

	public ArrayList<giayBean> getAllGiay() throws Exception {
		ArrayList<giayBean> ds = new ArrayList<giayBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "select * from giay";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);

		// Thực hiện câu lệnh SQL
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			ds.add(new giayBean(rs.getLong("magiay"), rs.getString("tengiay"), rs.getLong("soluong"), rs.getLong("gia"),
					rs.getString("maloai"), rs.getString("anh"), rs.getDate("ngaynhap"), rs.getString("mota")));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	public int countByCondition(String sql, Object... params) throws Exception {
		int total = 0;
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		for (int i = 0; i < params.length; i++) {
			cmd.setObject(i + 1, params[i]);
		}

		ResultSet rs = cmd.executeQuery();
		if (rs.next()) {
			total = rs.getInt("total");
		}
		rs.close();
		kn.cn.close();
		return total;
	}

	public int countAll() throws Exception {
		String sql = "select count(*) as total from giay";
		return countByCondition(sql);
	}

	public int countByTen(String tengiay) throws Exception {
		String sql = "select count(*) as total from giay where tengiay like ?";
		return countByCondition(sql, "%" + tengiay + "%");
	}

	public int countByLoai(String maloai) throws Exception {
		String sql = "select count(*) as total from giay where maloai like ?";
		return countByCondition(sql, "%" + maloai + "%");
	}

//	public int countBySize(String size) throws Exception {
//		String sql = "select count(*) as total from giay where maloai like ?";
//		return countByCondition(sql, "%" + size + "%");
//	}

	// Phan trang all (size: sizepage)
	public ArrayList<giayBean> pagingAll(int index, int size) throws Exception {
		ArrayList<giayBean> ds = new ArrayList<giayBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "SELECT * FROM giay ORDER BY magiay OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, (index - 1) * size);
		cmd.setInt(2, size);

		// Thực hiện câu lệnh SQL
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			ds.add(new giayBean(rs.getLong("magiay"), rs.getString("tengiay"), rs.getLong("soluong"), rs.getLong("gia"),
					rs.getString("maloai"), rs.getString("anh"), rs.getDate("ngaynhap"), rs.getString("mota")));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	public ArrayList<giayBean> pagingAllAndLowPrice(int index, int size) throws Exception {
		ArrayList<giayBean> ds = new ArrayList<giayBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "SELECT * FROM giay ORDER BY gia asc OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, (index - 1) * size);
		cmd.setInt(2, size);

		// Thực hiện câu lệnh SQL
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			ds.add(new giayBean(rs.getLong("magiay"), rs.getString("tengiay"), rs.getLong("soluong"), rs.getLong("gia"),
					rs.getString("maloai"), rs.getString("anh"), rs.getDate("ngaynhap"), rs.getString("mota")));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	public ArrayList<giayBean> pagingAllAndHighPrice(int index, int size) throws Exception {
		ArrayList<giayBean> ds = new ArrayList<giayBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "SELECT * FROM giay ORDER BY gia desc OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, (index - 1) * size);
		cmd.setInt(2, size);

		// Thực hiện câu lệnh SQL
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			ds.add(new giayBean(rs.getLong("magiay"), rs.getString("tengiay"), rs.getLong("soluong"), rs.getLong("gia"),
					rs.getString("maloai"), rs.getString("anh"), rs.getDate("ngaynhap"), rs.getString("mota")));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	// Phan trang co dieu kien
	public ArrayList<giayBean> pagingByCondition(int index, int size, String sql, String condition) throws Exception {
		ArrayList<giayBean> ds = new ArrayList<giayBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		PreparedStatement cmd = kn.cn.prepareStatement(sql);

		cmd.setString(1, condition);
		cmd.setInt(2, (index - 1) * size);
		cmd.setInt(3, size);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			ds.add(new giayBean(rs.getLong("magiay"), rs.getString("tengiay"), rs.getLong("soluong"), rs.getLong("gia"),
					rs.getString("maloai"), rs.getString("anh"), rs.getDate("ngaynhap"), rs.getString("mota")));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

//	public ArrayList<giayBean> pagingAll(int index, int size, String tengiay) throws Exception {
//		String sql = "select * from giay where tengiay like ? order by magiay offset ? rows fetch next ? rows only";
//		return pagingByCondition(index, size, sql, "");
//	}

	public ArrayList<giayBean> pagingByTen(int index, int size, String tengiay) throws Exception {
		String sql = "select * from giay where tengiay like ? order by magiay offset ? rows fetch next ? rows only";
		return pagingByCondition(index, size, sql, "%" + tengiay + "%");
	}

	public ArrayList<giayBean> pagingByTenAndLowPrice(int index, int size, String tengiay) throws Exception {
		String sql = "select * from giay where tengiay like ? order by gia asc offset ? rows fetch next ? rows only";
		return pagingByCondition(index, size, sql, "%" + tengiay + "%");
	}

	public ArrayList<giayBean> pagingByTenAndHighPrice(int index, int size, String tengiay) throws Exception {
		String sql = "select * from giay where tengiay like ? order by gia desc offset ? rows fetch next ? rows only";
		return pagingByCondition(index, size, sql, "%" + tengiay + "%");
	}

	public ArrayList<giayBean> pagingByLoai(int index, int size, String maloai) throws Exception {
		String sql = "select * from giay where maloai like ? order by magiay offset ? rows fetch next ? rows only";
		return pagingByCondition(index, size, sql, "%" + maloai + "%");
	}

	public ArrayList<giayBean> pagingByLoaiAndLowPrice(int index, int size, String maloai) throws Exception {
		String sql = "select * from giay where maloai like ? order by gia asc offset ? rows fetch next ? rows only";
		return pagingByCondition(index, size, sql, "%" + maloai + "%");
	}

	public ArrayList<giayBean> pagingByLoaiAndHighPrice(int index, int size, String maloai) throws Exception {
		String sql = "select * from giay where maloai like ? order by gia desc offset ? rows fetch next ? rows only";
		return pagingByCondition(index, size, sql, "%" + maloai + "%");
	}

	// Silde trangchu
	public ArrayList<giayBean> slideGiayTrangChu() throws Exception {
		ArrayList<giayBean> ds = new ArrayList<giayBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "select * from giay where magiay like '%' +'1'+ '%'";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);

		// Thực hiện câu lệnh SQL
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			ds.add(new giayBean(rs.getLong("magiay"), rs.getString("tengiay"), rs.getLong("soluong"), rs.getLong("gia"),
					rs.getString("maloai"), rs.getString("anh"), rs.getDate("ngaynhap"), rs.getString("mota")));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	// Latest product
	public ArrayList<giayBean> latestProducts() throws Exception {
		ArrayList<giayBean> ds = new ArrayList<giayBean>();
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		String sql = "select top(8) * from giay where magiay like '%' +'2'+ '%' or magiay like '%' +'3'+ '%'";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);

		// Thực hiện câu lệnh SQL
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			ds.add(new giayBean(rs.getLong("magiay"), rs.getString("tengiay"), rs.getLong("soluong"), rs.getLong("gia"),
					rs.getString("maloai"), rs.getString("anh"), rs.getDate("ngaynhap"), rs.getString("mota")));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}

	public int Them(String tengiay, long soluong, long gia, String maloai, String anh, String ngaynhap, String mota)
			throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "insert into giay(tengiay, soluong, gia, maloai, anh, ngaynhap, mota) values(? , ?, ?, ?, ?, ?, ?)";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setString(1, tengiay);
		cmd.setLong(2, soluong);
		cmd.setLong(3, gia);
		cmd.setString(4, maloai);
		cmd.setString(5, anh);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date parsed = format.parse(ngaynhap);
		java.sql.Date datesql = new java.sql.Date(parsed.getTime());
		cmd.setDate(6, datesql);
		cmd.setString(7, mota);
		int kq = cmd.executeUpdate();
		kn.cn.close();
		return kq;
	}

	public void Xoa(long magiay) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "delete from giay where magiay = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setLong(1, magiay);
		cmd.executeUpdate();
		kn.cn.close();
	}

	public giayBean getGiay(long magiay) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();

		giayBean giay = null;

		String sql = "select * from giay where magiay = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, magiay);
		ResultSet rs = cmd.executeQuery();
		if (rs.next()) {
			giay = new giayBean(rs.getLong("magiay"), rs.getString("tengiay"), rs.getLong("soluong"), rs.getLong("gia"),
					rs.getString("maloai"), rs.getString("anh"), rs.getDate("ngaynhap"), rs.getString("mota"));
		}
		rs.close();
		kn.cn.close();
		return giay;
	}

	public void Sua(long magiay, String tengiay, long soluong, long gia, String maloai, String anh, String ngaynhap,
			String mota) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "update giay set tengiay = ?, soluong = ?, gia = ?, maloai = ?, anh = ?, ngaynhap = ?, mota = ? where magiay = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tengiay);
		cmd.setLong(2, soluong);
		cmd.setLong(3, gia);
		cmd.setString(4, maloai);
		cmd.setString(5, anh);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date parsed = format.parse(ngaynhap);
		java.sql.Date datesql = new java.sql.Date(parsed.getTime());
		cmd.setDate(6, datesql);
		cmd.setString(7, mota);
		cmd.setLong(8, magiay);
		cmd.executeUpdate();
		kn.cn.close();
	}
}
