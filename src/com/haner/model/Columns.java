package com.haner.model;

/**
 * 列属性实体类
 */
public class Columns {

    private Integer ids;
    private String sche;
    private String tname;
    private String colname;
    private String coltype;
    private String clength;
    private String isnull;
    private String related;
    private String ccomment;
    private String note;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public String getColname() {
        return colname;
    }

    public void setColname(String colname) {
        this.colname = colname;
    }

    public String getColtype() {
        return coltype;
    }

    public void setColtype(String coltype) {
        this.coltype = coltype;
    }

    public String getClength() {
        return clength;
    }

    public void setClength(String clength) {
        this.clength = clength;
    }

    public String getRelated() {
        return related;
    }

    public void setRelated(String related) {
        this.related = related;
    }

    public String getCcomment() {
        return ccomment;
    }

    public void setCcomment(String ccomment) {
        this.ccomment = ccomment;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getSche() {
        return sche;
    }

    public void setSche(String sche) {
        this.sche = sche;
    }

    public String getIsnull() {
        return isnull;
    }

    public void setIsnull(String isnull) {
        this.isnull = isnull;
    }
}
