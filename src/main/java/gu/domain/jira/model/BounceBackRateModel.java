package gu.domain.jira.model;

import java.util.Date;

/**
 * Table : jira_bounce_back_rate
 */
public class BounceBackRateModel {
    private String id;
    private String projectkey;
    private int bbr_numerator; // bouce back rate 계산식 의 분자(reopen 개수)
    private int bbr_denominator;// bouce back rate 계산식 의 분모(closed 개수)
    private int reopentype;  //solved->reopen(0), closed->reopen(1)
    private Date bbr_date;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProjectkey() {
        return projectkey;
    }

    public void setProjectkey(String projectkey) {
        this.projectkey = projectkey;
    }

    public int getBbr_numerator() {
        return bbr_numerator;
    }

    public void setBbr_numerator(int bbr_numerator) {
        this.bbr_numerator = bbr_numerator;
    }

    public int getBbr_denominator() {
        return bbr_denominator;
    }

    public void setBbr_denominator(int bbr_denominator) {
        this.bbr_denominator = bbr_denominator;
    }

    public int getReopentype() {
        return reopentype;
    }

    public void setReopentype(int reopentype) {
        this.reopentype = reopentype;
    }

    public Date getBbr_date() {
        return bbr_date;
    }

    public void setBbr_date(Date bbr_date) {

        this.bbr_date = bbr_date;
    }
}
