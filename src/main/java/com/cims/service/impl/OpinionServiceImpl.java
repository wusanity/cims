package com.cims.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.bean.TbOpinion;
import com.cims.mapper.TbOpinionMapper;
import com.cims.service.OpinionService;

@Service
public class OpinionServiceImpl implements OpinionService{
	@Autowired
	private TbOpinionMapper tbOpinionMapper;
	@Override
	public void addOpinion(TbOpinion tbOpinion) {
		tbOpinionMapper.insert(tbOpinion);
	}
	@Override
	public ArrayList<TbOpinion> findByType() {
		ArrayList<TbOpinion> selectByType = (ArrayList<TbOpinion>) tbOpinionMapper.selectByType();
		return selectByType;
	}
	
}
