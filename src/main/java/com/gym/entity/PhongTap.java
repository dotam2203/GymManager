package com.gym.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "PHONGTAP")
public class PhongTap {
	@Id
	@Column(name = "MaPhong")
	public Integer maPhong;

	@Column(name = "TenPhong")
	public String tenPhong;

	@Column(name = "MoTa")
	public String moTa;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/DD/YYYY")
	@Column(name = "NgaySD")
	public Date ngaySD;
	

	@OneToMany(mappedBy = "phongtapGV")
	private Collection<GiangVien> giangVien;
	

	public Integer getMaPhong() {
		return maPhong;
	}

	public void setMaPhong(Integer maPhong) {
		this.maPhong = maPhong;
	}

	public String getTenPhong() {
		return tenPhong;
	}

	public void setTenPhong(String tenPhong) {
		this.tenPhong = tenPhong;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public Date getNgaySD() {
		return ngaySD;
	}

	public void setNgaySD(Date ngaySD) {
		this.ngaySD = ngaySD;
	}

	public Collection<GiangVien> getGiangVien() {
		return giangVien;
	}

	public void setGiangVien(Collection<GiangVien> giangVien) {
		this.giangVien = giangVien;
	}


	

	
	

}
