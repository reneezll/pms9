package gu.backend.scheduler;

import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
//import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class JenkinsScheduler {

	private Log logger = LogFactory.getLog(JenkinsScheduler.class);
	
	@Scheduled(fixedDelay=3000)
	public void insertOrUpdateBuildStatus() {
		System.out.println("[scheduler][jenkins]");
		
	}
	
}