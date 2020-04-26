package com.cims.service;

import org.activiti.engine.task.Task;

public interface ActivitiService {
	public void deploy();
	public void startInstance(String status);
	public Task queryTask(String assignee,String status);
	public void completeTask(String assignee,String status);
	public void deleteInstance(String status);
}
