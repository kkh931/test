package com.example.spring01.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/list") // 컨트롤러 URL 매핑
public class ListController {
	
	@RequestMapping(value = "/walbe", method = RequestMethod.GET)
	public String goWalbe(Model model) {
		return "list/walbe";
	}
}
