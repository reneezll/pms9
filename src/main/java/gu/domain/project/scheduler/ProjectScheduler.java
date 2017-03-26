package gu.domain.project.scheduler;

import gu.domain.project.dao.ProjectDao;
import gu.domain.project.model.ProjectModel;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

//import org.json.JSONObject;

@Component
public class ProjectScheduler {

	@Autowired
	private ProjectDao projectDao;

	private Log logger = LogFactory.getLog(ProjectScheduler.class);
	
	@Scheduled(fixedDelay=3000)
	public void insertProject(){
//		System.out.println("[insertProject]");
//		List<?> projectModel = projectDao.selectAllProjectList();
//		for(int i=0 ; i< projectModel.size(); i++){
//			ProjectModel proj = (ProjectModel)projectModel.get(i);
//			System.out.println("proj " + proj.getPrno());
//		}

//		projectModel.setProjectkey("aaa");

//		projectDao.insertProject(projectModel);


		
	}
	
}