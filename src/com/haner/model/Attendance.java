package com.haner.model;

public class Attendance {
    private Integer ids;
    private Integer userid;
    private Integer year;
    private Integer month;
    private Integer day;
    private Integer atten;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getMonth() {
        return month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public Integer getDay() {
        return day;
    }

    public void setDay(Integer day) {
        this.day = day;
    }

    public Integer getAtten() {
        return atten;
    }

    public void setAtten(Integer atten) {
        this.atten = atten;
    }

    @Override
    public String toString() {
        return "Attendance{" +
                "ids=" + ids +
                ", userid=" + userid +
                ", year=" + year +
                ", month=" + month +
                ", day=" + day +
                ", atten=" + atten +
                '}';
    }
}
