package com.cims.bean;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-06
 */
public class TbSecondIndexScore {
    /**
     * 唯一标识
     */
    private String sid;

    /**
     * 二级指标编号
     */
    private String secondIndicatorId;

    /**
     * 二级指标得分
     */
    private Float score;

    /**
     * 父类索引
     */
    private String parentId;

    /**
     * 课程编号
     */
    private String cid;

    /**
     * 权重
     */
    private String weight;

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

    public String getSecondIndicatorId() {
        return secondIndicatorId;
    }

    public void setSecondIndicatorId(String secondIndicatorId) {
        this.secondIndicatorId = secondIndicatorId == null ? null : secondIndicatorId.trim();
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight == null ? null : weight.trim();
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