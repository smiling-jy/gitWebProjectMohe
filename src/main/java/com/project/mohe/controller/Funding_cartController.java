package com.project.mohe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.project.mohe.service.NoticeService;

@Controller
public class Funding_cartController {
	@Autowired
	private NoticeService noticeService;
}
