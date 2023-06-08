package com.gym.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.gym.entity.DiemDanh;

public interface DiemDanhRepository extends JpaRepository<DiemDanh, Integer>{
	@Query("SELECT c FROM DiemDanh c ORDER BY c.id DESC")
	public List<DiemDanh> findByIdDesc();
	
	@Query("SELECT c FROM DiemDanh c WHERE c.khachHangDD.maKH = :maKH ORDER BY c.thoiGian DESC")
	public List<DiemDanh> findDiemDanhByMaKH(@Param("maKH") String maKH);
	
	@Query("SELECT c FROM DiemDanh c WHERE c.nhanVienDD.maNV = :maNV")
	public List<DiemDanh> findDiemDanhByMaNV(@Param("maNV") String maNV);
	
	@Query("SELECT c FROM DiemDanh c WHERE c.nhanVienDD.maNV = :maNV ORDER BY c.thoiGian DESC")
	public List<DiemDanh> findDiemDanhByMaNVDateDesc(@Param("maNV") String maNV);
	
	@Query("SELECT c.soLan FROM DiemDanh c WHERE c.khachHangDD.maKH = :maKH")
	public List<DiemDanh> findSoLansByMaKH(@Param("maKH") String maKH);
}
