package com.springApirestCozy.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.RealEstateInterestProspect;

import java.io.Serializable;
import java.util.List;

public interface IrealEstateProspectInteresRepository extends JpaRepository<RealEstateInterestProspect, Serializable> {

	List<RealEstateInterestProspect> findById(Integer realEstateId);
	
}
