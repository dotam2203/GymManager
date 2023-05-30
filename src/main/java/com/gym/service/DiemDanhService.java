package com.gym.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.DiemDanh;
import com.gym.repository.DiemDanhRepository;

@Service
public class DiemDanhService{
	@Autowired
	private DiemDanhRepository repo;
	public List<DiemDanh> listAll(){
		return (List<DiemDanh>) repo.findAll();
	}
	public Optional<DiemDanh> get(Integer id){
		return repo.findById(id);
	}
	public void delete(Integer id) {
		repo.deleteById(id);
	}
	public void save(DiemDanh diemDanh) {
		repo.save(diemDanh);
	}
	public List<DiemDanh> selectIdDDsByMaThe(String maThe){
		return repo.findIdDDsByMaThe(maThe);
	}
	public List<DiemDanh> selectSoLansByMaThe(String maThe){
		return repo.findSoLansByMaThe(maThe);
	}
}
