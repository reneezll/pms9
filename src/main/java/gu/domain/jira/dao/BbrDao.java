package gu.domain.jira.dao;

import gu.domain.jira.model.BounceBackRateModel;
import gu.domain.jira.model.param.BbrSearchVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BbrDao {

    @Autowired
    private SqlSessionTemplate sqlSession;    

    static final Logger LOGGER = LoggerFactory.getLogger(BbrDao.class);
    
    /** ------------------------------------------
     * 프로젝트.
     */

    public List<?> selectByKey(BbrSearchVO param) {

        return sqlSession.selectList("jira.bbr.selectByKey", param);
    }

    /**
     * 프로젝트 저장.
     */
    public void insertBbr(BounceBackRateModel param) {
         sqlSession.insert("jira.bbr.insertBbr", param);
    }
}
