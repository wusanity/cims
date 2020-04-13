package com.cims.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.bean.TbUserInfo;
import com.cims.mapper.TbUserInfoMapper;
import com.cims.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	TbUserInfoMapper tbUserInfoMapper;
	public TbUserInfo findPwd(TbUserInfo tbUserInfo) {
		// TODO Auto-generated method stub
		return tbUserInfoMapper.selectPwd(tbUserInfo);	
	}

}
