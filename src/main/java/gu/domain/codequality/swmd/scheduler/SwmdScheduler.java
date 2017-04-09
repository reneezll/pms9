package gu.domain.codequality.swmd.scheduler;

import gu.domain.codequality.swmd.client.SwmdClient;
import gu.domain.codequality.swmd.dao.ProjSignalDao;
import gu.domain.codequality.swmd.model.ProjSignalModel;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

//import org.json.JSONObject;

@Component
public class SwmdScheduler {

	@Autowired
	private ProjSignalDao projSignalDao;
	private String url = "http://localhost:3000/swmd";

	private Log logger = LogFactory.getLog(SwmdScheduler.class);

	@Scheduled(fixedDelay = 300000) // TODO: set delay
	public void insertProjectSignal() {
		System.out.println("[insertProjectSignal]");
		ArrayList<String> projKeys = new ArrayList<String>(Arrays.asList("aaa", "bbb", "ccc")); // TODO:
																								// get
																								// project
																								// key
																								// from
																								// projectDAO
//		ArrayList<ProjSignalModel> arrayList = SwmdClient.getProjectSignals(this.url, projKeys);
//		for (ProjSignalModel model : arrayList) {
//			projSignalDao.insert(model); //TODO : check insert already

//		}

	}

}