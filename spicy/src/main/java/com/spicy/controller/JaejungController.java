package com.spicy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spicy.dao.JaejungDao;
import com.spicy.domain.Jaejung;
import com.spicy.service.JaejungService;

@Controller
@RequestMapping (value="/jaejung")
public class JaejungController extends GenericController<Jaejung, Long, JaejungService, JaejungDao> {

}
