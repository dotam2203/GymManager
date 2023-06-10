package com.gym.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.DiemDanh;
import com.gym.entity.GiangVien;
import com.gym.entity.PhongTap;
import com.gym.repository.GiangVienRepository;

@Service
public class GiangVienService {
	@Autowired
	private GiangVienRepository repo;
	public List<GiangVien> listAll(){
		return (List<GiangVien>) repo.findAll();
	}
	public GiangVien selectPtByMaGV(Integer maGV){
		return repo.findGiangVienByMaGV(maGV);
	}
}
