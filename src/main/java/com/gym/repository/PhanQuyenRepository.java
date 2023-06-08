package com.gym.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.gym.entity.PhanQuyen;

public interface PhanQuyenRepository  extends JpaRepository<PhanQuyen,Integer> {
	@Query("SELECT c FROM PhanQuyen c WHERE c.maQuyen = :maQuyen")
	public PhanQuyen findByMaQuyen(@Param("maQuyen") int maQuyen);
}
