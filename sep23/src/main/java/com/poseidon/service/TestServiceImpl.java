package com.poseidon.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poseidon.dao.TestDAO;

@Service("testService")
public class TestServiceImpl implements TestService {
	@Autowired
	private	TestDAO	testDAO;
	
	@Override
	public List<Map<String, Object>> boardList() {
		return testDAO.boardList();
	}
	@Override
	public Map<String, Object> detail(Map<String, Object> map){
		return testDAO.detail(map);
	}

}
