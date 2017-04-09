package gu.domain.codequality.swmd.dao;

import gu.domain.codequality.swmd.model.ProjSignalModel;
import gu.domain.jenkins.model.JenkinsModel;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjSignalDao {

    @Autowired
    private SqlSessionTemplate sqlSession;    

    static final Logger LOGGER = LoggerFactory.getLogger(ProjSignalDao.class);
    
    /** ------------------------------------------
     *
     */

    public List<?> select() {

        return sqlSession.selectList("cq.swmd.select");
    }

    /**
     *
     */
    public void insert(ProjSignalModel param) {
         sqlSession.insert("cq.swmd.insert", param);
    }
}
