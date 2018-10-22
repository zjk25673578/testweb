package com.haner.model;

import java.util.Date;

/**
 * 表属性实体类
 */
public class Tables {

    private Integer ids;
    private String sche;
    private String tname;
    private Date ctime;
    private String profunc;
    private String tcomment;
    private String related;
    private String note;

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

    @Override
    public String toString() {
        return "Tables{" +
                "ids=" + ids +
                ", sche='" + sche + '\'' +
                ", tname='" + tname + '\'' +
                ", ctime=" + ctime +
                ", profunc='" + profunc + '\'' +
                ", tcomment='" + tcomment + '\'' +
                ", related=" + related +
                ", note='" + note + '\'' +
                '}';
    }

    public String getSche() {
        return sche;
    }

    public void setSche(String sche) {
        this.sche = sche;
    }
}
