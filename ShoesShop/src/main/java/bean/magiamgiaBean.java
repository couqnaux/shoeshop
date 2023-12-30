package bean;

import java.util.Date;

public class magiamgiaBean {

	private String magiamgia;
	private int phantram;
	private Date hieuluc;

	public magiamgiaBean() {
		// TODO Auto-generated constructor stub
	}

	public magiamgiaBean(String magiamgia, int phantram, Date hieuluc) {
		super();
		this.magiamgia = magiamgia;
		this.phantram = phantram;
		this.hieuluc = hieuluc;
	}

	public String getMagiamgia() {
		return magiamgia;
	}

	public void setMagiamgia(String magiamgia) {
		this.magiamgia = magiamgia;
	}

	public int getPhantram() {
		return phantram;
	}

	public void setPhantram(int phantram) {
		this.phantram = phantram;
	}

	public Date getHieuluc() {
		return hieuluc;
	}

	public void setHieuluc(Date hieuluc) {
		this.hieuluc = hieuluc;
	}

}
