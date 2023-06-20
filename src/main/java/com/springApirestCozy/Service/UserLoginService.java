package com.springApirestCozy.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springApirestCozy.Entity.Rol_entity;
import com.springApirestCozy.Entity.User;
import com.springApirestCozy.Repository.IroleRepository;
import com.springApirestCozy.Repository.IuserRepository;

@Service
public class UserLoginService implements UserDetailsService  {
	
	@Autowired
	 IuserRepository iuserRepository;

	@Autowired
	IroleRepository roleRepository;

	@Override
	
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	    User user = iuserRepository.findByUser(username);
	    if (user == null) {
	        throw new UsernameNotFoundException("Usuario no encontrado: " + username);
	    }

	    List<Rol_entity> roles = roleRepository.findByIdRol(user.getIdRol());
	    if (roles.isEmpty()) {
	        throw new IllegalStateException("El usuario no tiene roles asignados: " + username);
	    }

	    List<GrantedAuthority> authorities = new ArrayList<>();
	    for (Rol_entity role : roles) {
	        authorities.add(new SimpleGrantedAuthority(role.getName()));
	    }
	    return new org.springframework.security.core.userdetails.User(user.getUser(), user.getPassword(), authorities);
	    
	}


}
