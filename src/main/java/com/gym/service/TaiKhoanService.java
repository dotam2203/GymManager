package com.gym.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.TaiKhoan;
import com.gym.repository.TaiKhoanRespository;

@Service
public class TaiKhoanService {
	@Autowired
	private TaiKhoanRespository repo;
	public List<TaiKhoan> listAll() {
		return (List<TaiKhoan>) repo.findAll();
	}
	
	public void delete(String userName) {
		repo.deleteById(userName);
	}

	public Optional<TaiKhoan> get(String userName) {
		return repo.findById(userName);
	}

	public void save(TaiKhoan taiKhoan) {
		repo.save(taiKhoan);
	}
	public TaiKhoan selectByUserName(String userName){
		return repo.findByUserName(userName);
	}
	public List<TaiKhoan> selectByMaQuyen(int maQuyen){
		return repo.findByMaQuyen(maQuyen);
	}
	public boolean updateByUserName(int trangThai,String userName){
		return repo.updateByUserName(trangThai,userName) > 0;
	}
}
