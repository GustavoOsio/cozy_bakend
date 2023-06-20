package com.springApirestCozy.Repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.Shedulle;


public interface IshedulleRepository  extends JpaRepository<Shedulle, Serializable> {

	public List<Shedulle> findByshedulleId(Integer shedulleId);
	
}
