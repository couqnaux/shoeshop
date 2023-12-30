package bo;

import java.util.ArrayList;

import bean.chitietgiayBean;
import bean.giohangBean;

public class giohangBo {

	public ArrayList<giohangBean> ds = new ArrayList<giohangBean>();

	public ArrayList<giohangBean> getds() {
		return ds;
	}

	public void them(chitietgiayBean giay, String size, Long slthem) {
		for (giohangBean gio : ds) {
			if (gio.getMagiay() == giay.getMagiay() && gio.getSize().equals(size)) {
				Long sl = gio.getSoluongmua() + slthem;
				gio.setSoluongmua(sl);
				Long giatien = gio.getGia();
				Long thanhtien = sl * giatien;
				gio.setThanhtien(thanhtien);
				return;
			}
		}
		// ds.add(new giohangBean(magiay, anh, tengiay, size, gia, slthem));
		ds.add(new giohangBean(giay.getMagiay(), giay.getAnh(), giay.getTengiay(), size, giay.getGia(), slthem));
	}

	public void xoa(long magiay, String size) {// gio: giay trong gio
		for (giohangBean gio : ds) {
			if (gio.getMagiay() == magiay && (size == null || gio.getSize().equals(size))) {
				ds.remove(gio);
				return;
			}
		}
	}

	public void xoaTatCa() {
		ds.clear();
	}

	public void xoaChon(String[] th) {
		for (String item : th) {
			String[] tt = item.split("[/]");
			long magiay = Long.parseLong(tt[0]);
			String size = tt[1];
			for (giohangBean g : ds) {
				if (g.getMagiay() == magiay && g.getSize().equals(size)) {
					ds.remove(g);
					break;
				}
			}
		}
	}

	public void sua(long magiay, long sl, String size) {
		for (giohangBean gio : ds) {
			// Kiem tra ma giay va size trong gio, neu trung nhau thi sua
			if (gio.getMagiay() == magiay && gio.getSize().equals(size)) {
				gio.setSoluongmua(sl);
				gio.setThanhtien(sl * gio.getGia());
				return;
			}
		}
	}

	public long TongTien() {
		long s = 0;
		for (giohangBean g : ds) {
			s = s + g.getThanhtien();
		}
		return s;
	}
}
