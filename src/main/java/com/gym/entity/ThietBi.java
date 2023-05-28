package com.gym.entity;

import java.util.Collection;
import java.util.Date;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "THIETBI")
public class ThietBi {
	@Id
	@Column(name = "MaThietBi")
	public String maTB;

	@Column(name = "TenThietBi")
	public String tenTB;

	@Column(name = "HinhAnh")
	public String hinhAnh;

	@Column(name = "MoTa")
	public String moTa;

	@Column(name = "SoLuong")
	public Integer soLuong;

	@Column(name = "ThuongHieu")
	public String thuongHieu;

	@Column(name = "TinhTrang")
	public String tinhTrang;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/DD/YYYY")
	@Column(name = "NgayNhap")
	public Date ngayNhap;

	@ManyToOne
	@JoinColumn(name = "MaLoai")
	public LoaiThietBi loaiThietBi;

	@ManyToOne
	@JoinColumn(name = "MaNV")
	public NhanVien nhanVien;

	public String getMaTB() {
		return maTB;
	}

	public void setMaTB(String maTB) {
		this.maTB = maTB;
	}

	public String getTenTB() {
		return tenTB;
	}

	public void setTenTB(String tenTB) {
		this.tenTB = tenTB;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public String getThuongHieu() {
		return thuongHieu;
	}

	public void setThuongHieu(String thuongHieu) {
		this.thuongHieu = thuongHieu;
	}

	public String getTinhTrang() {
		return tinhTrang;
	}

	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	public Date getNgayNhap() {
		return ngayNhap;
	}

	public void setNgayNhap(Date ngayNhap) {
		this.ngayNhap = ngayNhap;
	}

	public LoaiThietBi getLoaiThietBi() {
		return loaiThietBi;
	}

	public void setLoaiThietBi(LoaiThietBi loaiThietBi) {
		this.loaiThietBi = loaiThietBi;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

}
