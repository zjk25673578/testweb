package com.haner.model;

public class Columns {

    private Integer ids;
    private String sche;
    private String tname;
    private String colname;
    private String coltype;
    private String clength;
    private Integer related;
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

    public Integer getRelated() {
        return related;
    }

    public void setRelated(Integer related) {
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

    @Override
    public String toString() {
        return "Columns{" +
                "ids=" + ids +
                ", tname=" + tname +
                ", colname='" + colname + '\'' +
                ", coltype='" + coltype + '\'' +
                ", clength='" + clength + '\'' +
                ", related=" + related +
                ", ccomment='" + ccomment + '\'' +
                ", note='" + note + '\'' +
                '}';
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
}
