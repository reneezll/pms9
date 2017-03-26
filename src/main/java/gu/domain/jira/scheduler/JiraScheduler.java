package gu.domain.jira.scheduler;

import gu.domain.jira.common.JiraConst;
import gu.domain.jira.dao.BbrDao;
import gu.domain.jira.model.BounceBackRateModel;
import gu.domain.jira.model.param.BbrSearchVO;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

//import org.json.JSONObject;

@Component
public class JiraScheduler {

	@Autowired
	private BbrDao bbrDao;

	private Log logger = LogFactory.getLog(JiraScheduler.class);
	
	@Scheduled(fixedDelay=3000)
	public void insertBbr(){
		System.out.println("[insertBbr]");
//		BounceBackRateModel bbrModel = new BounceBackRateModel();
//		bbrModel.setProjectkey("TCPXI");
//		bbrModel.setReopentype(JiraConst.BBR_RSLV_REOPEN);
		BbrSearchVO searchVO = new BbrSearchVO();
		searchVO.setProjectkey("TCPXI");
		searchVO.setReopentype(JiraConst.BBR_RSLV_REOPEN);
		List<?> bbrLists = bbrDao.selectByKey(searchVO);
		for (int i =0 ; i< bbrLists.size(); i++){
			BounceBackRateModel tmpModel = (BounceBackRateModel)bbrLists.get(i);
			System.out.println("get " + tmpModel.getId());
		}
//		bbrDao.insertBbr(bbrModel);

	}
	
}