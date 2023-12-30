package bean;

import java.util.Date;

public class giayBean {
	private long magiay;
	private String tengiay;
	private long soluong;
	private long gia;
	private String maloai;
	private String anh;
	private Date ngaynhap;
	private String mota;

	public giayBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public giayBean(long magiay, String tengiay, long soluong, long gia, String maloai, String anh, Date ngaynhap,
			String mota) {
		super();
		this.magiay = magiay;
		this.tengiay = tengiay;
		this.soluong = soluong;
		this.gia = gia;
		this.maloai = maloai;
		this.anh = anh;
		this.ngaynhap = ngaynhap;
		this.mota = mota;
	}

	public long getMagiay() {
		return magiay;
	}

	public void setMagiay(long magiay) {
		this.magiay = magiay;
	}

	public String getTengiay() {
		return tengiay;
	}

	public void setTengiay(String tengiay) {
		this.tengiay = tengiay;
	}

	public long getSoluong() {
		return soluong;
	}

	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}

	public long getGia() {
		return gia;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}

	public String getMaloai() {
		return maloai;
	}

	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public Date getNgaynhap() {
		return ngaynhap;
	}

	public void setNgaynhap(Date ngaynhap) {
		this.ngaynhap = ngaynhap;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

}
