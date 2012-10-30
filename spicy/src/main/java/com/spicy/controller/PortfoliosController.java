package com.spicy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spicy.dao.PortfoliosDao;
import com.spicy.domain.Portfolios;
import com.spicy.service.PortfoliosService;

@Controller
@RequestMapping (value="/portfolios")
public class PortfoliosController extends GenericController<Portfolios, Long, PortfoliosService, PortfoliosDao> {

}
