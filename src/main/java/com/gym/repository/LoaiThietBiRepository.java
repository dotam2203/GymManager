package com.gym.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.gym.entity.LoaiThietBi;

import java.util.List;

@Repository
public interface LoaiThietBiRepository  extends JpaRepository<LoaiThietBi, Integer> {
	@Query("SELECT c FROM LoaiThietBi c WHERE c.maLoai = :maLoai")
	public LoaiThietBi findByMaLoai(@Param("maLoai") Integer maLoai);
	@Query("SELECT c FROM LoaiThietBi c WHERE c.tenLoai LIKE :tenLoai")
	public List<LoaiThietBi> findByTenLoai(@Param("tenLoai") String tenLoai);
	@Query("SELECT c FROM LoaiThietBi c ORDER BY c.maLoai DESC")
	public List<LoaiThietBi> findAllSortMaLoai();
	
}
