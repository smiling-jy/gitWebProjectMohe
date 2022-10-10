package com.project.mohe.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mohe.dao.MyaccountDAO;

@Repository("myaccountDAO")
public class MyaccountDAOImpl implements MyaccountDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

}
