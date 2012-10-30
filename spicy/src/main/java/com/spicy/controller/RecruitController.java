package com.spicy.controller;

import org.json.simple.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spicy.dao.RecruitDao;
import com.spicy.domain.Recruit;
import com.spicy.service.RecruitService;

@Controller
@RequestMapping (value="/recruit")
public class RecruitController {
	
	@RequestMapping (method=RequestMethod.POST)
	public ResponseEntity<String> create(Recruit domain, RecruitService service, RecruitDao dao) {
		String status = domain.getStatus();
		System.out.println(status);
		JSONObject json = new JSONObject();
		
		boolean result = service.create(domain);
		
		result = true;
		if(result) {
			if (status.equals("hire")) {
				json.put("result", "Thank You very much");
			} else if (status.equals("interview")) {
				json.put("result", "Thank You");
			} else if (status.equals("considering")) {
				json.put("result", "please...");
			} else {
				json.put("result", "Hire or Interview please...");
			}
		} else {
			json.put("result", "Oops. Try Again");
		}
		
		ResponseEntity<String> jsonResponse = getJSONResponse (json);
		return jsonResponse;
	}
	
	public ResponseEntity<String> getJSONResponse(JSONObject obj) {
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.setContentType(MediaType.APPLICATION_JSON);
	    responseHeaders.set("Access-Control-Allow-Origin","*");
	    return new ResponseEntity<String>(obj.toJSONString(), responseHeaders, HttpStatus.CREATED);
	}
}
