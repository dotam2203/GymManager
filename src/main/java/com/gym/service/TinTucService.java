package com.gym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.entity.TinTuc;
import com.gym.repository.TinTucRepository;

import java.util.List;
import java.util.Optional;

@Service
public class TinTucService {
	@Autowired
	private TinTucRepository repo;

	public List<TinTuc> listAll() {
		return (List<TinTuc>) repo.findAll();
	}

	public void delete(Integer id) {
		repo.deleteById(id);
	}

	public Optional<TinTuc> get(Integer id) {
		return repo.findById(id);
	}

	public void save(TinTuc tinTuc) {
		repo.save(tinTuc);
	}

	public TinTuc selectByMaTT(Integer maTinTuc) {
		return repo.findByMaTin(maTinTuc);
	}

	public List<TinTuc> selectSortMaTinTuc() {
		return repo.findAllSortMaTinTuc();
	}
}
