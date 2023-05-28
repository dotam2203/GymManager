package com.gym.repository;



import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.gym.entity.ThietBi;

@Repository
public interface ThietBiRepository  extends CrudRepository<ThietBi, String> {
	@Query("SELECT c FROM ThietBi c WHERE c.maTB = :maTB")
	public ThietBi findByMaTB(@Param("maTB") String maTB);
	@Query("SELECT c FROM ThietBi c WHERE c.loaiThietBi.maLoai = :maLoai")
	public List<ThietBi> findByLoaiTB(@Param("maLoai") String maLoai);
	@Query("SELECT c FROM ThietBi c WHERE c.tenTB LIKE CONCAT(:kw,'%') OR c.loaiThietBi.tenLoai LIKE CONCAT(:kw,'%') ")
	public List<ThietBi> findByKeyWord(@Param("kw") String kw);
	@Query("FROM ThietBi c ORDER BY c.maTB DESC")
	public List<ThietBi> findAllSortMaTB();
	
}
