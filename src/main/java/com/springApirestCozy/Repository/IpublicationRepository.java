package com.springApirestCozy.Repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.Publication;


public interface IpublicationRepository extends JpaRepository<Publication, Serializable> {
	public List<Publication> findBypublicationId(Integer publicationId);
}
