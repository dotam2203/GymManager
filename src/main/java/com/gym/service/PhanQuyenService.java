package com.gym.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.PhanQuyen;
import com.gym.repository.PhanQuyenRepository;

@Service
public class PhanQuyenService {
	@Autowired
	private PhanQuyenRepository repo;
	public List<PhanQuyen> listAll() {
		return (List<PhanQuyen>) repo.findAll();
	}
	
	public void delete(int maQuyen) {
		repo.deleteById(maQuyen);
	}

	public Optional<PhanQuyen> get(int maQuyen) {
		return repo.findById(maQuyen);
	}

	public void save(PhanQuyen phanQuyen) {
		repo.save(phanQuyen);
	}
	public PhanQuyen selectByMaQuyen(int maQuyen){
		return repo.findByMaQuyen(maQuyen);
	}
}
