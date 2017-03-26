package gu.domain.project.dao;

import gu.domain.project.model.ProjectModel;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectDao {

    @Autowired
    private SqlSessionTemplate sqlSession;    

    static final Logger LOGGER = LoggerFactory.getLogger(ProjectDao.class);
    
    /** ------------------------------------------
     * 프로젝트.
     */

    public List<?> selectProjectList(ProjectModel param) {
        return sqlSession.selectList("project.selectProjList", param);
    }

    public List<?> selectAllProjectList() {
        return sqlSession.selectList("project.selectAllProjList");
    }
    /**
     * 프로젝트 저장.
     */
    public void insertProject(ProjectModel param) {
         sqlSession.insert("project.insertProj", param);
    }
}
