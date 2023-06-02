package com.gym.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.LoaiThietBi;
import com.gym.repository.LoaiThietBiRepository;

import java.util.List;
import java.util.Optional;

@Service
public class LoaiThietBiService {
	@Autowired
	private LoaiThietBiRepository repo;

	public List<LoaiThietBi> listAll() {
		return (List<LoaiThietBi>) repo.findAll();
	}

	public void delete(Integer id) {
		repo.deleteById(id);
	}

	public Optional<LoaiThietBi> get(Integer id) {
		return repo.findById(id);
	}

	public void save(LoaiThietBi loaiTB) {
		repo.save(loaiTB);
	}
	
	public LoaiThietBi selectByMaKH(Integer maLoai) {
		return repo.findByMaLoai(maLoai);
	}
	public List<LoaiThietBi> selectByTenLoai(String tenLoai) {
		return repo.findByTenLoai(tenLoai);
	}
	
	public List<LoaiThietBi> selectSortMaLoai() {
		return repo.findAllSortMaLoai();
	}
}
