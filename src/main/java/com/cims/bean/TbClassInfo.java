package com.cims.bean;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-06
 */
public class TbClassInfo {
    /**
     * 课程编号，唯一标识
     */
    private String cid;

    /**
     * 课程名
     */
    private String cname;

    /**
     * 教师编号/用户编号
     */
    private String uid;

    /**
     * 课程类型，1表示课程评价（含实验），2表示课程评价（不含实验），3表示实训评价
     */
    private Integer type;

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}