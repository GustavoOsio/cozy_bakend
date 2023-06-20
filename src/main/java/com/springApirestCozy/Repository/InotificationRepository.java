package com.springApirestCozy.Repository;
import org.springframework.data.jpa.repository.JpaRepository;


import com.springApirestCozy.Entity.Notification;

import java.io.Serializable;
import java.util.List;


public interface InotificationRepository extends JpaRepository<Notification, Serializable>  {
	
	List<Notification> findById(Integer id);

}
