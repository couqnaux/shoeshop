package bean;

public class giohangBean {
	private long magiay;
	private String anh;
	private String tengiay;
	private String size;
	private long gia;
	private long soluongmua;
	private long thanhtien;

	public giohangBean() {
		// TODO Auto-generated constructor stub
	}

	public giohangBean(long magiay, String anh, String tengiay, String size, long gia, long soluongmua) {
		super();
		this.magiay = magiay;
		this.anh = anh;
		this.tengiay = tengiay;
		this.size = size;
		this.gia = gia;
		this.soluongmua = soluongmua;
		this.thanhtien = soluongmua * gia;
	}

	public long getMagiay() {
		return magiay;
	}

	public void setMagiay(long magiay) {
		this.magiay = magiay;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public String getTengiay() {
		return tengiay;
	}

	public void setTengiay(String tengiay) {
		this.tengiay = tengiay;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public long getGia() {
		return gia;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}

	public long getSoluongmua() {
		return soluongmua;
	}

	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}

	public long getThanhtien() {
		return soluongmua * gia;
	}

	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}

}
