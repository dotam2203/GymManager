package com.gym.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "LOAITHIETBI")
public class LoaiThietBi {
	@Id
	@GeneratedValue
	@Column(name = "MaLoai")
	public Integer maLoai;

	@Column(name = "TenLoai")
	public String tenLoai;

	@OneToMany(mappedBy = "loaiThietBi", fetch = FetchType.EAGER)
	public Collection<ThietBi> listThietBi;

	public Integer getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(Integer maLoai) {
		this.maLoai = maLoai;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	public Collection<ThietBi> getListThietBi() {
		return listThietBi;
	}

	public void setListThietBi(Collection<ThietBi> listThietBi) {
		this.listThietBi = listThietBi;
	}

}
