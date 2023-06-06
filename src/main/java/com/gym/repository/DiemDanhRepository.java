package com.gym.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.gym.entity.DiemDanh;

public interface DiemDanhRepository extends CrudRepository<DiemDanh, Integer>{
	@Query("SELECT c FROM DiemDanh c ORDER BY c.id DESC")
	public List<DiemDanh> findByIdDesc();
	@Query("SELECT c FROM DiemDanh c WHERE c.khachHangDD.maKH = :maKH")
	public List<DiemDanh> findIdDDsByMaKH(@Param("maKH") String maKH);
	@Query("SELECT c.soLan FROM DiemDanh c WHERE c.khachHangDD.maKH = :maKH")
	public List<DiemDanh> findSoLansByMaKH(@Param("maKH") String maKH);
}
