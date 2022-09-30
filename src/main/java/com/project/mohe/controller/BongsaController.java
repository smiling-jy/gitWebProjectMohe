package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.project.mohe.service.BongsaService;

@Controller
public class BongsaController {
	@Autowired
	private BongsaService bongsaService;
	
}
