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
	public List<DiemDanh> selectByIdDesc() {
		return repo.findByIdDesc();
	}
	public List<DiemDanh> selectDiemDanhByMaKH(String maKH){
		return repo.findDiemDanhByMaKH(maKH);
	}
	public List<DiemDanh> selectSoLansByMaKH(String maKH){
		return repo.findSoLansByMaKH(maKH);
	}
	public List<DiemDanh> selectDiemDanhByMaNV(String maNV){
		return repo.findDiemDanhByMaNV(maNV);
	}
	public List<DiemDanh> selectDiemDanhByMaNVDateDesc(String maNV){
		return repo.findDiemDanhByMaNVDateDesc(maNV);
	}
}
