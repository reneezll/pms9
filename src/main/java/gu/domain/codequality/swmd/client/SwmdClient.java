package gu.domain.codequality.swmd.client;

import gu.domain.codequality.swmd.model.ProjSignalModel;
import gu.etc.util.DateUtil;

import java.util.ArrayList;
import java.util.Date;

import org.apache.http.client.utils.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;

import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;

/**
 * Created by Administrator on 2017-04-07.
 */
public class SwmdClient {
	/**
	 *
	 * @param url
	 * @param projKeys
	 * @return
	 */
	public static ArrayList<ProjSignalModel> getProjectSignals(String url, ArrayList<String> projKeys) {
		 String[] parsePatterns = {"yyyyMMdd"};

		ArrayList<ProjSignalModel> arrayList = new ArrayList<>();
		try {
			HttpResponse<JsonNode> jsonResponse = Unirest.get(url).asJson();
			JSONObject obj = jsonResponse.getBody().getObject();
			for (String strKey : projKeys) {
				ProjSignalModel projModel = new ProjSignalModel();
				String sigDate = obj.getJSONObject("signal_date").getString(strKey);
				String sigDict = obj.getJSONObject("signal_dict").getJSONArray(strKey).toString();
				Date dtSigDate = DateUtils.parseDate(sigDate, parsePatterns);
				projModel.setSignal_date(dtSigDate);
				projModel.setSwmd_key(strKey);
				projModel.setSignal_dict(sigDict);
				//TODO: set Project key
				arrayList.add(projModel);
			}
			System.out.println("aaa");
		} catch (UnirestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arrayList;

	}
}
