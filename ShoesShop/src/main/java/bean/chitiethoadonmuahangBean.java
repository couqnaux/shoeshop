package bean;

public class chitiethoadonmuahangBean {
	private long macthd;
	private long magiay;
	private String tengiay;
	private String size;
	private long soluongmua;
	private long gia;
	private long thanhtien;
	private long mahd;
	private boolean damua;

	public chitiethoadonmuahangBean() {
		// TODO Auto-generated constructor stub
	}

	public chitiethoadonmuahangBean(long macthd, long magiay, String tengiay, String size, long soluongmua, long gia,
			long thanhtien, long mahd, boolean damua) {
		super();
		this.macthd = macthd;
		this.magiay = magiay;
		this.tengiay = tengiay;
		this.size = size;
		this.soluongmua = soluongmua;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.mahd = mahd;
		this.damua = damua;
	}

	public long getMacthd() {
		return macthd;
	}

	public void setMacthd(long macthd) {
		this.macthd = macthd;
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

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public long getSoluongmua() {
		return soluongmua;
	}

	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}

	public long getGia() {
		return gia;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}

	public long getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}

	public long getMahd() {
		return mahd;
	}

	public void setMahd(long mahd) {
		this.mahd = mahd;
	}

	public boolean isDamua() {
		return damua;
	}

	public void setDamua(boolean damua) {
		this.damua = damua;
	}

}
