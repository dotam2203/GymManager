package com.gym.entity;

import java.util.Date;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "DIEMDANH")
public class DiemDanh {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idDD")
	private Integer id;
	
	@Column(name = "soLan")
	private Integer soLan;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/DD/YYYY")
	@Column(name = "ThoiGian")
	private Date thoiGian;
	
	@ManyToOne
	@JoinColumn(name = "MaKH") 
	private KhachHang khachHangDD;


	public KhachHang getKhachHangDD() {
		return khachHangDD;
	}

	public void setKhachHangDD(KhachHang khachHangDD) {
		this.khachHangDD = khachHangDD;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSoLan() {
		return soLan;
	}

	public void setSoLan(Integer soLan) {
		this.soLan = soLan;
	}

	public Date getThoiGian() {
		return thoiGian;
	}

	public void setThoiGian(Date thoiGian) {
		this.thoiGian = thoiGian;
	}



}
