package com.springApirestCozy.Repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springApirestCozy.Entity.Session;


public interface IsessionRepository extends JpaRepository<Session, Serializable> {

	public List<Session> findBysessionId(Integer sessionId);
}
