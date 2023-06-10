package com.gym.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.gym.entity.DiemDanh;
import com.gym.entity.GiangVien;
import com.gym.entity.PhongTap;

public interface GiangVienRepository extends CrudRepository<GiangVien, Integer>{
	@Query("SELECT c FROM GiangVien c WHERE c.maGV = :maGV")
	public GiangVien findGiangVienByMaGV(@Param("maGV") Integer maGV);
	

}
