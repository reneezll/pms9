package gu.domain.jira.model.param;

/**
 * Created by java.yang on 17. 3. 26.
 */
public class BbrSearchVO {
    private String projectkey;
    private int reopentype;

    public String getProjectkey() {
        return projectkey;
    }

    public void setProjectkey(String projectkey) {
        this.projectkey = projectkey;
    }

    public int getReopentype() {
        return reopentype;
    }

    public void setReopentype(int reopentype) {
        this.reopentype = reopentype;
    }
}
