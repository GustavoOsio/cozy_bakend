package com.springApirestCozy.Repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.Archive_real_estate;

public interface IarchiveRealEstateRepository extends JpaRepository<Archive_real_estate, Serializable> {

	public List<Archive_real_estate> findById(Integer archiveReal);
	
	public List<Archive_real_estate> findByRealEstateId(Integer id);
	
}
