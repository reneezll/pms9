package gu.domain.project.model;

/**
 * Table : proj_project
 */
public class ProjectModel {
    private int prno;            //프로젝트 번호
    private String prstartdate;    //시작일자
    private String prenddate;        //종료일자
    private String prtitle;        //프로젝트 제목
    private String prdate;            //작성일자
    private String userid;            //사용자 id
    private String prstatus;        //상태
    private String deleteflag;        //삭제
    private String projectkey;        // project key on jira
    private String org;        // organigation ex.) AVN
    private String oem;        // oem ex.) buyer name

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getProjectkey() {
        return projectkey;
    }

    public void setProjectkey(String projectkey) {
        this.projectkey = projectkey;
    }

    public String getOrg() {
        return org;
    }

    public void setOrg(String org) {
        this.org = org;
    }

    public String getOem() {
        return oem;
    }

    public void setOem(String oem) {
        this.oem = oem;
    }

    public int getPrno() {
        return prno;
    }

    public void setPrno(int prno) {
        this.prno = prno;
    }

    public String getPrstartdate() {
        return prstartdate;
    }

    public void setPrstartdate(String prstartdate) {
        this.prstartdate = prstartdate;
    }

    public String getPrenddate() {
        return prenddate;
    }

    public void setPrenddate(String prenddate) {
        this.prenddate = prenddate;
    }

    public String getPrtitle() {
        return prtitle;
    }

    public void setPrtitle(String prtitle) {
        this.prtitle = prtitle;
    }

    public String getPrdate() {
        return prdate;
    }

    public void setPrdate(String prdate) {
        this.prdate = prdate;
    }

    public String getPrstatus() {
        return prstatus;
    }

    public void setPrstatus(String prstatus) {
        this.prstatus = prstatus;
    }

    public String getDeleteflag() {
        return deleteflag;
    }

    public void setDeleteflag(String deleteflag) {
        this.deleteflag = deleteflag;
    }


}
