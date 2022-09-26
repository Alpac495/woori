package com.poseidon.service;

import java.util.Map;

public interface LoginService {
	Map<String, Object> login(Map<String, Object> map);
	
	Map<String, Object> myInfo(Map<String, Object> map);
}
