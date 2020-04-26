package com.cims.service.impl;

import java.util.List;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.mapper.TbTempEvaluationTemplateMapper;
import com.cims.service.ActivitiService;

@Service
public class ActivitiServiceImpl implements ActivitiService{
	@Autowired
	private TbTempEvaluationTemplateMapper tbTempEvaluationTemplateMapper;
	@Autowired
	private RepositoryService repositoryService;
	@Autowired
	private RuntimeService runtimeService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private HistoryService historyService;
	@Override
	public void deploy() {
		//部署流程定义
		Deployment deployment = repositoryService.createDeployment()
				.addClasspathResource("diagrams/releaseAndVerify.bpmn")
				.addClasspathResource("diagrams/releaseAndVerify.png")
				.name("评价表发布与审核")
				.deploy();
	}
	//开启流程实例
	@Override
	public void startInstance(String status) {
		//评价表编号，有两套，为1表示课程评价，为2表示实训评价
		runtimeService.startProcessInstanceByKey("templateVerify", status);
	}
	//查询流程实例
	@Override
	public Task queryTask(String assignee, String status) {
		Task singleResult;
		if(null == assignee || ("").equals(assignee)) {
			singleResult = taskService.createTaskQuery()
				.processDefinitionKey("templateVerify")
				.processInstanceBusinessKey(status)
				.singleResult();
		}else {
			singleResult = taskService.createTaskQuery()
				.processDefinitionKey("templateVerify")
				.taskAssignee(assignee)
				.processInstanceBusinessKey(status)
				.singleResult();
		}	
		return singleResult;
	}
	//完成流程实例
	@Override
	public void completeTask(String assignee,String status) {
		Task singleResult = taskService.createTaskQuery()
			.processDefinitionKey("templateVerify")
			.taskAssignee(assignee)
			.processInstanceBusinessKey(status)
			.singleResult();
		taskService.complete(singleResult.getId());
	}
	//删除流程实例
	public void deleteInstance(String status) {
		List<HistoricProcessInstance> list = historyService.createHistoricProcessInstanceQuery() 
				.list();
		for(HistoricProcessInstance hpi : list) {
			String processInstanceId = hpi.getId(); //流程实例ID
			//判断该流程实例是否结束，未结束和结束两者删除表的信息是不一样的。// 使用流程实例ID查询
			ProcessInstance pi = runtimeService.createProcessInstanceQuery()
					.processInstanceId(processInstanceId)
					.processInstanceBusinessKey(status)
					.singleResult();
			if(pi==null){
				//该流程实例已经完成了
				historyService.deleteHistoricProcessInstance(processInstanceId);
			}else{
				//该流程实例未结束的
				runtimeService.deleteProcessInstance(processInstanceId,"");
				historyService.deleteHistoricProcessInstance(processInstanceId);//(顺序不能换)
			}
		}
		
	}
	
}
