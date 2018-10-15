package com.haner.model;

import java.util.Date;

public class Appuser {
    private Integer ids;
    private String username;
    private String realname;
    private Date createtime;
    private Byte status;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Appuser{" +
                "ids=" + ids +
                ", username='" + username + '\'' +
                ", realname='" + realname + '\'' +
                ", birthday='" + createtime + '\'' +
                ", status=" + status +
                '}';
    }
}
