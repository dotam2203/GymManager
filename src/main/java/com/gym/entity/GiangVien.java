package com.gym.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name ="GIANGVIEN")
public class GiangVien {
	@Id
	@Column(name="MaGV")
	private Integer maGV;
	
	@Column(name="TenGV")
	private String tenGV;
	
	@Column(name="Luong")
	private Float luong;
	
	
	@ManyToOne
	@JoinColumn(name="maPhong")
	private PhongTap phongtapGV;
	
	@OneToMany(mappedBy = "goitapGV")
	private Collection<GoiTap> goiTap;

	public Collection<GoiTap> getGoiTap() {
		return goiTap;
	}

	public void setGoiTap(Collection<GoiTap> goiTap) {
		this.goiTap = goiTap;
	}

	public Integer getMaGV() {
		return maGV;
	}
	
	public void setMaGV(Integer maGV) {
		this.maGV = maGV;
	}
	public String getTenGV() {
		return tenGV;
	}
	public void setTenGV(String tenGV) {
		this.tenGV = tenGV;
	}
	public Float getLuong() {
		return luong;
	}
	public void setLuong(Float luong) {
		this.luong = luong;
	}

	public PhongTap getPhongtapGV() {
		return phongtapGV;
	}

	public void setPhongtapGV(PhongTap phongtapGV) {
		this.phongtapGV = phongtapGV;
	}

	
	
}
