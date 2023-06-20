package com.springApirestCozy.Repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.Rol_entity;




public interface IroleRepository extends JpaRepository<Rol_entity, Serializable> {

	public List<Rol_entity> findByIdRol(Integer idRol);
	

	
}
