package com.springApirestCozy.Repository;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.ArchiveUser;



public interface IarchiveUser extends JpaRepository<ArchiveUser, Serializable> {
	 //Optional<ArchiveUser> findById(Integer userId);
	List<ArchiveUser> findById(Integer userId);

}
