package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.project.mohe.service.AdminService;

@Controller
public class VolunteerController {
	@Autowired
	private AdminService adminService;
	
}