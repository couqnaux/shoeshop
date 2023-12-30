package bean;

import java.util.Date;

public class hoadonmuhangBean {
	private long mahd;
	private Date ngaymua;
	private long soluongmua;
	private long tongtien;
	private long makh;
	private boolean damua;

	public hoadonmuhangBean() {
		// TODO Auto-generated constructor stub
	}

	public hoadonmuhangBean(long mahd, Date ngaymua, long soluongmua, long tongtien, long makh, boolean damua) {
		super();
		this.mahd = mahd;
		this.ngaymua = ngaymua;
		this.soluongmua = soluongmua;
		this.tongtien = tongtien;
		this.makh = makh;
		this.damua = damua;
	}

	public long getMahd() {
		return mahd;
	}

	public void setMahd(long mahd) {
		this.mahd = mahd;
	}

	public Date getNgaymua() {
		return ngaymua;
	}

	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}

	public long getSoluongmua() {
		return soluongmua;
	}

	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}

	public long getTongtien() {
		return tongtien;
	}

	public void setTongtien(long tongtien) {
		this.tongtien = tongtien;
	}

	public long getMakh() {
		return makh;
	}

	public void setMakh(long makh) {
		this.makh = makh;
	}

	public boolean isDamua() {
		return damua;
	}

	public void setDamua(boolean damua) {
		this.damua = damua;
	}

}
