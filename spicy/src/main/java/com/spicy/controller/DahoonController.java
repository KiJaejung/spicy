package com.spicy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spicy.dao.DahoonDao;
import com.spicy.domain.Dahoon;
import com.spicy.service.DahoonService;

@Controller
@RequestMapping (value="/dahoon")
public class DahoonController extends GenericController<Dahoon, Long, DahoonService, DahoonDao>{
	
}
