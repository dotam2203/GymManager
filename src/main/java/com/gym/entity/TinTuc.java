package com.gym.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "TINTUC")
public class TinTuc {
	@Id
	@GeneratedValue
	@Column(name = "MaTinTuc")
	private String maTinTuc;

	@Column(name = "TieuDe")
	private String tieuDe;

	@Column(name = "NoiDung")
	private String noiDung;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/DD/YYYY")
	@Column(name = "NgayTao")
	private Date ngayTao;

	@Column(name = "HinhAnh")
	private String hinhAnh;

	@ManyToOne
	@JoinColumn(name = "MaNV")
	private NhanVien nhanVien;

	public String getMaTinTuc() {
		return maTinTuc;
	}

	public void setMaTinTuc(String maTinTuc) {
		this.maTinTuc = maTinTuc;
	}

	public String getTieuDe() {
		return tieuDe;
	}

	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

	public Date getNgayTao() {
		return ngayTao;
	}

	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

}
