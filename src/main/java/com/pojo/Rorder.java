package com.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Rorder {
    private Integer oid;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date booktime;
    @DateTimeFormat(pattern ="yyyy-MM-dd")
    private Date leavetime;

    private Date reachtime;

    private Integer uid;

    private Integer rid;

    private Double price;

    private Integer roomnum;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Date getBooktime() {
        return booktime;
    }

    public void setBooktime(Date booktime) {
        this.booktime = booktime;
    }

    public Date getLeavetime() {
        return leavetime;
    }

    public void setLeavetime(Date leavetime) {
        this.leavetime = leavetime;
    }

    public Date getReachtime() {
        return reachtime;
    }

    public void setReachtime(Date reachtime) {
        this.reachtime = reachtime;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getRoomnum() {
        return roomnum;
    }

    public void setRoomnum(Integer roomnum) {
        this.roomnum = roomnum;
    }
}