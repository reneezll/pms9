package gu.etc.util;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
public class DateUtil {

	/**
	 * 
	 * @param from : ex.) 20130304
	 * @return
	 */
	public Date StringToDate(String from){

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");

		Date to = null;
		try {
			to = transFormat.parse(from);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return to;



	}
}
