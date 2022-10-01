package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.project.mohe.service.DonationService;

@Controller
public class DonationController {
	@Autowired
	private DonationService donationService;
	
}
