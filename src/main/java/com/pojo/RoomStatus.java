package com.pojo;

public class RoomStatus {
    private Long sid;

    private String image;

    private Integer islive;

    private Integer isclean;

    private Integer ispay;

    private String remark;

    private Integer rid;

    public Long getSid() {
        return sid;
    }

    public void setSid(Long sid) {
        this.sid = sid;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Integer getIslive() {
        return islive;
    }

    public void setIslive(Integer islive) {
        this.islive = islive;
    }

    public Integer getIsclean() {
        return isclean;
    }

    public void setIsclean(Integer isclean) {
        this.isclean = isclean;
    }

    public Integer getIspay() {
        return ispay;
    }

    public void setIspay(Integer ispay) {
        this.ispay = ispay;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }
}