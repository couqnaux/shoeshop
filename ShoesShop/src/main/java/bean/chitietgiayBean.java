package bean;

public class chitietgiayBean {
	private long magiay;
	private String anh;
	private String tengiay;
	private String mota;
	private String maloai;
	private long gia;

	public chitietgiayBean() {
		// TODO Auto-generated constructor stub
	}

	public chitietgiayBean(long magiay, String anh, String tengiay, String mota, String maloai, long gia) {
		super();
		this.magiay = magiay;
		this.anh = anh;
		this.tengiay = tengiay;
		this.mota = mota;
		// this.size = size;
		this.maloai = maloai;
		this.gia = gia;
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

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public String getMaloai() {
		return maloai;
	}

	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}

	public long getGia() {
		return gia;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}

}
