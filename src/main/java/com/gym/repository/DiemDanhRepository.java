package com.gym.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.gym.entity.DiemDanh;

public interface DiemDanhRepository extends CrudRepository<DiemDanh, Integer>{
	@Query("SELECT c FROM DiemDanh c WHERE c.theDD.maThe = :mathe")
	public List<DiemDanh> findIdDDsByMaThe(@Param("mathe") String mathe);
	@Query("SELECT c.soLan FROM DiemDanh c WHERE c.theDD.maThe = :mathe")
	public List<DiemDanh> findSoLansByMaThe(@Param("mathe") String mathe);
}
