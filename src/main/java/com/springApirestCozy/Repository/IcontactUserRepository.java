package com.springApirestCozy.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.ContactUser;

import java.io.Serializable;
import java.util.List;

public interface IcontactUserRepository extends JpaRepository<ContactUser, Serializable> {
	 List<ContactUser> findById(Integer id);
	
}
