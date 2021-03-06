package com.haner.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 表属性实体类
 */
public class Tables implements Serializable {

    private Integer ids;
    private String sche;
    private String tname;
    private Date ctime;
    private String profunc;
    private String tcomment;
    private String related;
    private String note;
    private List<Columns> cols;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public String getProfunc() {
        return profunc;
    }

    public void setProfunc(String profunc) {
        this.profunc = profunc;
    }

    public String getTcomment() {
        return tcomment;
    }

    public void setTcomment(String tcomment) {
        this.tcomment = tcomment;
    }

    public String getRelated() {
        return related;
    }

    public void setRelated(String related) {
        this.related = related;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getSche() {
        return sche;
    }

    public void setSche(String sche) {
        this.sche = sche;
    }

    public List<Columns> getCols() {
        return cols;
    }

    public void setCols(List<Columns> cols) {
        this.cols = cols;
    }

}
