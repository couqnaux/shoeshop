package bean;

public class adminxacnhanBean {
	private long macthd;
	private String hoten;
	private String tengiay;
	private String size;
	private long gia;
	private long soluongmua;
	private long thanhtien;
	private boolean damua;

	public adminxacnhanBean() {
		// TODO Auto-generated constructor stub
	}

	public adminxacnhanBean(long macthd, String hoten, String tengiay, String size, long gia, long soluongmua,
			long thanhtien, boolean damua) {
		super();
		this.macthd = macthd;
		this.hoten = hoten;
		this.tengiay = tengiay;
		this.size = size;
		this.gia = gia;
		this.soluongmua = soluongmua;
		this.thanhtien = thanhtien;
		this.damua = damua;
	}

	public long getMacthd() {
		return macthd;
	}

	public void setMacthd(long macthd) {
		this.macthd = macthd;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
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
		return thanhtien;
	}

	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}

	public boolean isDamua() {
		return damua;
	}

	public void setDamua(boolean damua) {
		this.damua = damua;
	}

}
