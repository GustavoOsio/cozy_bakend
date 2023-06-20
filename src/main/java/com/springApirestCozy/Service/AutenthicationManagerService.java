package com.springApirestCozy.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springApirestCozy.Entity.UsuarioLoginVo;
import com.springApirestCozy.Repository.IroleRepository;
import com.springApirestCozy.Repository.IuserRepository;

@RestController
@RequestMapping("/api/auth")
public class AutenthicationManagerService {

	@Autowired
	private UserLoginService usuarioLogin;

	@Autowired
	IuserRepository usuarioRepository;
	@Autowired
	IroleRepository usuarioTipoRepository;

	@Autowired
	private AuthenticationManager authenticationManager;

	@PostMapping("/iniciarSesion")
	public UserDetails loadUserByUsername(@RequestBody UsuarioLoginVo userLogin) 
			throws UsernameNotFoundException {
		com.springApirestCozy.Entity.User user =usuarioRepository.findByUser( userLogin.getUser());
		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority("USUARIO"));
		UserDetails UserDt = new User(user.getUser(), user.getPassword(), roles);
		return UserDt;

	}

}
