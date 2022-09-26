package com.poseidon.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.poseidon.common.CommandMap;
import com.poseidon.service.TestService;

@Controller
public class TestController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "testService")
	private TestService testService;
	
	@GetMapping("/index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/main.do")
	public ModelAndView main() throws Exception {
		ModelAndView mv = new ModelAndView("main");
		List<Map<String, Object>> list = testService.boardList();
		//System.out.println(list);
		mv.addObject("list", list);
		return mv;
	}
	
	@GetMapping("/detail.do")
	public ModelAndView detail(CommandMap commandMap) {
		ModelAndView mv = new ModelAndView();
		//System.out.println(request.getParameter("bno"));
		//System.out.println(commandMap.getMap());
		
		Map<String, Object>detail = testService.detail(commandMap.getMap());
		mv.addObject("detail",detail);
		
		return mv;
	}
}