package com.gym.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.The;
import com.gym.repository.TheRepository;
@Service
public class TheService {
	@Autowired
	private TheRepository repo;

	public List<The> listAll() {
		return (List<The>) repo.findAll();
	}

	public void delete(String id) {
		repo.deleteById(id);
	}

	public Optional<The> get(String id) {
		return repo.findById(id);
	}

	public void save(The the) {
		repo.save(the);
	}
	public List<The> selectByMaKHNotSort(String maKH) {
		return repo.findByMaKHNotSort(maKH);
	}
	public List<The> selectByMaKH(String maKH) {
		return repo.findByMaKH(maKH);
	}
	
	public The selectByMaThe(String maThe){
		return repo.findByMaThe(maThe);
	}
	public List<The> selectByMaGT(String maGT){
		return repo.findByMaGT(maGT);
	}
	
	public List<The> selectByTrangThai(String trangThai){
		return repo.findByTrangThai(trangThai);
	}
	public List<The> selectByTrangThaiKhachHang(String trangThai, String maKH){
		return repo.findByTrangThaiKhachHang(trangThai, maKH);
	}
	public boolean updateByMaThe(String trangThai,String maThe) {
		return repo.updateTtByMaThe(trangThai, maThe)>0;
	}
	public boolean updateTtNgayBdByMaThe(String trangThai,Date ngayBD,String maThe) {
		return repo.updateTtNgayBdByMaThe(trangThai,ngayBD, maThe)>0;
	}
	public boolean updateNgayBDByMaThe(Date ngayBD,String maThe) {
		return repo.updateNgayBDByMaThe(ngayBD, maThe)>0;
	}
	public boolean updateNgayByMaThe(Date ngayBD,Date ngayKT,String maThe) {
		return repo.updateNgayByMaThe(ngayBD, ngayKT, maThe)>0;
	}
	public List<The> selectSortMaThe() {
		return repo.findAllSortMaThe();
	}
	
	public List<The> selectByNgayHH(Date ngayKT){
		return repo.checkByNgayKT(ngayKT);
	}
	
	public List<The> findBetweenNgayDK(Date namBD,Date namKT){
		return repo.findBetweenNgayDK(namBD,namKT);
	}
	public List<The> findBetweenNgayDKTenLop(Date namBD,Date namKT,String tenLopDV){
		return repo.findBetweenNgayDKTenLop(namBD,namKT,tenLopDV);
	}
	public List<The> findBetweenNgayDKTenKH(Date namBD,Date namKT, String tenKH){
		return repo.findBetweenNgayDKTenKH(namBD,namKT,tenKH);
	}
	public List<The> findBetweenNamSortGiaTien(String nam){
		return repo.findBetweenNamSortGiaTien(nam);
	}
//	public List<The> sortByNgayBD(){
//		return repo.sortByData();
//	}
//	
	
}
