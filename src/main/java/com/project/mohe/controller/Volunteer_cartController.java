package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.project.mohe.service.Volunteer_cartService;

@Controller
public class Volunteer_cartController {
	@Autowired
	private Volunteer_cartService volunteer_cartService;
	
}
