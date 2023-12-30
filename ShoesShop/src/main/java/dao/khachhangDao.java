package dao;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.khachhangBean;

public class khachhangDao {
	public static String ecrypt(String text) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		String enrtext;
		MessageDigest msd = MessageDigest.getInstance("MD5");
		byte[] srctextbyte = text.getBytes("UTF-8");
		byte[] enrtextbyte = msd.digest(srctextbyte);
		BigInteger big = new BigInteger(1, enrtextbyte);
		enrtext = big.toString(16);
		return enrtext;
	}

	public khachhangBean ktdn(String tendn, String pass) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "select * from KhachHang where tendn = ? and pass = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setString(1, tendn);
		cmd.setString(2, ecrypt(pass));
		ResultSet rs = cmd.executeQuery();
		khachhangBean kh = null;
		if (rs.next()) {
			Long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String sodt = rs.getString("sodt");
			String email = rs.getString("email");
			kh = new khachhangBean(makh, hoten, diachi, sodt, email, tendn, pass);
		}
		rs.close();
		kn.cn.close();
		return kh;
	}

	public void dangky(String hoten, String diachi, String sodt, String email, String tendn, String pass)
			throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "insert into khachhang(hoten,diachi,sodt,email,tendn,pass) values(?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setString(2, diachi);
		cmd.setString(3, sodt);
		cmd.setString(4, email);
		cmd.setString(5, tendn);
		cmd.setString(6, ecrypt(pass));
		cmd.executeUpdate();
		kn.cn.close();
	}

	public boolean tontai(String tendn) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "select * from khachhang where tendn = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setString(1, tendn);
		ResultSet rs = cmd.executeQuery();
		return rs.next();
	}

	public void doimatkhau(String tendn, String mkcu, String mkmoi) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String sql = "update khachhang set pass = ? where tendn = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, ecrypt(mkmoi));
		cmd.setString(2, tendn);
		if (ktdn(tendn, mkcu) != null)
			cmd.executeUpdate();
	}

	public void doithongtin(String tendn, String hoten, String diachi, String sodt, String email) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketnoi();
		String query = "UPDATE KhachHang SET hoten = ?, diachi = ?, sodt = ?, email = ? WHERE tendn = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(query);
		cmd.setString(1, hoten);
		cmd.setString(2, diachi);
		cmd.setString(3, sodt);
		cmd.setString(4, email);
		cmd.setString(5, tendn);
		cmd.executeUpdate();
		kn.cn.close();
	}

}
