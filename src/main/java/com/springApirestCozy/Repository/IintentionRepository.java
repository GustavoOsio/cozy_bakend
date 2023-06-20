package com.springApirestCozy.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.Intention;

import java.io.Serializable;
import java.util.List;

public interface IintentionRepository extends JpaRepository<Intention, Serializable> {

	 List<Intention> findById(Integer id);

	List<Intention> findByIntentionContaining(String filter);
	
}
