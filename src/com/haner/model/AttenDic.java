package com.haner.model;

public class AttenDic {
    private Integer ids;
    private String attencode;
    private String attenname;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public String getAttencode() {
        return attencode;
    }

    public void setAttencode(String attencode) {
        this.attencode = attencode;
    }

    public String getAttenname() {
        return attenname;
    }

    public void setAttenname(String attenname) {
        this.attenname = attenname;
    }

    @Override
    public String toString() {
        return "AttenDic{" +
                "ids=" + ids +
                ", attencode='" + attencode + '\'' +
                ", attenname='" + attenname + '\'' +
                '}';
    }
}
