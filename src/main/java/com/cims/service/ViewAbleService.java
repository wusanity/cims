package com.cims.service;

import java.util.ArrayList;

import com.cims.bean.ViewCustom;

public interface ViewAbleService {
	public ArrayList<ViewCustom> getViewCustoms(String uid,String tName);
	public ArrayList<ViewCustom> getAllViewCustoms();
	public void callPython(String cid, String time);
}
