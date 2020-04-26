package com.cims.service;

import java.util.ArrayList;
import java.util.List;

import com.cims.bean.TbOpinion;
import com.sun.mail.iap.Literal;

public interface OpinionService {
	public void addOpinion(TbOpinion tbOpinion);
	public ArrayList<TbOpinion> findByType();
}
