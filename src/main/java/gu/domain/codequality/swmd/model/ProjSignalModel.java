package gu.domain.codequality.swmd.model;

import java.util.Date;
/**
 * Table : jenkins_conf
 */
public class ProjSignalModel {
    private int id;
    private String swmd_key;
    private Date compare_date;
    private Date signal_date;
    private String signal_dict; //json_object

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getSwmd_key() {
        return swmd_key;
    }

    public void setSwmd_key(String swmd_key) {
        this.swmd_key = swmd_key;
    }

    public Date getCompare_date() {
        return compare_date;
    }

    public void setCompare_date(Date compare_date) {
        this.compare_date = compare_date;
    }

    public Date getSignal_date() {
        return signal_date;
    }

    public void setSignal_date(Date signal_date) {
        this.signal_date = signal_date;
    }

    public String getSignal_dict() {
        return signal_dict;
    }

    public void setSignal_dict(String signal_dict) {
        this.signal_dict = signal_dict;
    }
}
