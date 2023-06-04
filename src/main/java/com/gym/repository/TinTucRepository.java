package com.gym.repository;



import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.gym.entity.TinTuc;
import com.gym.entity.TinTuc;

import java.util.List;

@Repository
public interface TinTucRepository  extends CrudRepository<TinTuc, String> {
	@Query("SELECT c FROM TinTuc c WHERE c.maTinTuc = :maTinTuc")
	public TinTuc findByMaTin(@Param("maTinTuc") int maTin);
	@Query("FROM TinTuc c ORDER BY c.maTinTuc DESC")
	public List<TinTuc> findAllSortMaTinTuc();
	
}
