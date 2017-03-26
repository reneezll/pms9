package gu.domain.jira.collector;

import gu.domain.jira.common.JiraConst;
import gu.domain.jira.dao.BbrDao;
import gu.domain.jira.model.BounceBackRateModel;

/**
 * Created by java.yang on 17. 3. 26.
 */
public class JiraCollector {
    /**
     * insert bounce back rate to DB
     */
    public void insertBbr(BbrDao bbrDao, String projKey){
        //test_data
        this._insertBbr(bbrDao,projKey,JiraConst.BBR_RSLV_REOPEN);
        this._insertBbr(bbrDao,projKey,JiraConst.BBR_CLOSE_REOPEN);

    }

    private void _insertBbr(BbrDao bbrDao, String projKey, int reopenType) {
        int numerator = 0;
        int denominator = 0;
        // TODO: get numbers of issue from jira issue tracker
		BounceBackRateModel bbrModel = new BounceBackRateModel();
		bbrModel.setProjectkey(projKey);
		bbrModel.setReopentype(reopenType);
        bbrModel.setBbr_denominator(denominator);
        bbrModel.setBbr_numerator(numerator);
        // TODO: get list of reopen issue

		bbrDao.insertBbr(bbrModel);
    }

    /**
     * insert bounce back penalty Info to DB
     */
    public void insertBbrPenalty(BbrDao bbrDao){

    }
}
