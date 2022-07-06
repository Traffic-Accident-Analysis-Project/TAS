package com.project.tas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.tas.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@GetMapping("/service/center")
	public String callServiceCenter() {
		return "serviceCenter";
	}
	
	@GetMapping("/tas/service/write")
	public String callServiceWrite() {
		return "seviceWrite";
	}
}
