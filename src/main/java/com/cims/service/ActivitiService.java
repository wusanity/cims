package com.cims.service;

public interface ActivitiService {
	public void deploy();
	public void startInstance(String status);
	public void completeTask(String assignee,String status);
}
