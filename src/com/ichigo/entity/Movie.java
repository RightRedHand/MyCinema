package com.ichigo.entity;

import java.util.Date;

public class Movie {
    private int mid;
    private String mname;
    private String mprice;
    private String mdate;
    private int uid;

    public Movie(int mid, String mname, String mprice, String mdate, int uid) {
        this.mid = mid;
        this.mname = mname;
        this.mprice = mprice;
        this.mdate = mdate;
        this.uid = uid;
    }

    public String getMdate() {
        return mdate;
    }

    public void setMdate(String mdate) {
        this.mdate = mdate;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Movie() {
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMprice() {
        return mprice;
    }

    public void setMprice(String mprice) {
        this.mprice = mprice;
    }


}