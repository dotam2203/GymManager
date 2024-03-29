package com.gym.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.GoiTap;

import com.gym.repository.GoiTapRepository;

@Service
public class GoiTapService {
	@Autowired
	private GoiTapRepository repo;

	public List<GoiTap> listAll() {
		return (List<GoiTap>) repo.findAll();
	}

	public void delete(String id) {
		repo.deleteById(id);
	}

	public Optional<GoiTap> get(String id) {
		return repo.findById(id);
	}

	public void save(GoiTap goiTap) {
		repo.save(goiTap);
	}
	public List<GoiTap> selectByMaLop(String maLop){
		return repo.findByMaLop(maLop);
	}
	public List<GoiTap> selectByTenLopTrangThai(String tenLop){
		return repo.findByTenLopTrangThai(tenLop);
	}
	public GoiTap selectByMaGT(String maGT){
		return repo.findByMaGT(maGT);
	}
	public List<GoiTap> selectByMaLopTenGoiTap(String maLop,String tenGoiTap){
		return repo.findByMaLopGoiTap(maLop,tenGoiTap);
	}
	public boolean updateByMaGT(int trangThai,String maGT){
		return repo.updateByMaGT(trangThai,maGT) > 0;
	}
}
