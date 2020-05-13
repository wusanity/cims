package com.cims.bean;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-05-11
 */
public class TbScoreRank {
    private Integer rid;

    /**
     * 课程名
     */
    private String cname;

    /**
     * 教师名
     */
    private String tname;

    /**
     * 得分
     */
    private Float score;

    /**
     * 用来区分课程
     */
    private String cid;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }
}