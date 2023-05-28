package com.gym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.ThietBi;
import com.gym.repository.ThietBiRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ThietBiService {
	@Autowired
	private ThietBiRepository repo;

	public List<ThietBi> listAll() {
		return (List<ThietBi>) repo.findAll();
	}

	public void delete(String id) {
		repo.deleteById(id);
	}

	public Optional<ThietBi> get(String id) {
		return repo.findById(id);
	}

	public void save(ThietBi thietBi) {
		repo.save(thietBi);
	}

	public ThietBi selectByMaTB(String maTB) {
		return repo.findByMaTB(maTB);
	}

	public List<ThietBi> selectByLoaiTB(String maLoai) {
		return repo.findByLoaiTB(maLoai);
	}

//	public List<ThietBi> selectByKeyword(String kw) {
//		return repo.findByKeyWord(kw);
//	}

	public List<ThietBi> selectSortMaTB() {
		return repo.findAllSortMaTB();
	}
}
