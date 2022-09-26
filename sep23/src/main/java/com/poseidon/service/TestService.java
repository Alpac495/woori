package com.poseidon.service;

import java.util.List;
import java.util.Map;

public interface TestService {
	List<Map<String, Object>> boardList();

	Map<String, Object> detail(Map<String, Object> map);
}
