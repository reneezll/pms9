package gu.domain.jenkins.dao;

import gu.domain.jenkins.model.JenkinsModel;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JenkinsConfDao {

    @Autowired
    private SqlSessionTemplate sqlSession;    

    static final Logger LOGGER = LoggerFactory.getLogger(JenkinsConfDao.class);
    
    /** ------------------------------------------
     *
     */

    public List<?> select() {

        return sqlSession.selectList("jenkins.conf.select");
    }

    /**
     *
     */
    public void insert(JenkinsModel param) {
         sqlSession.insert("jenkins.conf.insert", param);
    }
}
