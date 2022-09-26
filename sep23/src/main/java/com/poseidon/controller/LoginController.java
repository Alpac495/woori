package com.poseidon.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.poseidon.common.CommandMap;
import com.poseidon.service.LoginService;

@Controller
public class LoginController {

	@Resource(name = "loginService")
	private LoginService loginservice;
	
	
	@GetMapping("/login.do")
	public String login(){
		return "login";
	}
	
	@PostMapping("/login.do")
	public String login(CommandMap map, HttpSession session) {
		Map<String, Object> login = loginservice.login(map.getMap());
		if (String.valueOf(login.get("count")).equals("0")) {
			System.out.println("아이디나 비밀번호가 틀렸습니다");
			return "redirect:/login.do?error=2580";
		} else {
			System.out.println("웰컴이다 맨이야");
			session.setAttribute("name", login.get("b_name"));
			session.setAttribute("id", map.get("id"));
			return "redirect:/main.do";	
		}
		
		
	}
	
	
}

