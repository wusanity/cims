package com.cims.bean;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-06
 */
public class TbClassScoreInfo {
    /**
     * 编号，唯一标识
     */
    private String sid;

    /**
     * 课程编号
     */
    private String cid;

    /**
     * 得分
     */
    private Float score;

    /**
     * 学年
     */
    private String schoolYear;

    /**
     * 学期
     */
    private Integer semester;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public String getSchoolYear() {
        return schoolYear;
    }

    public void setSchoolYear(String schoolYear) {
        this.schoolYear = schoolYear == null ? null : schoolYear.trim();
    }

    public Integer getSemester() {
        return semester;
    }

    public void setSemester(Integer semester) {
        this.semester = semester;
    }
}