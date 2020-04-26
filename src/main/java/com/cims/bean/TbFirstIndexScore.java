package com.cims.bean;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-06
 */
public class TbFirstIndexScore {
    /**
     * 唯一标识
     */
    private Integer fid;

    /**
     * 指标分类编号
     */
    private String classificationId;

    /**
     * 一级指标编号
     */
    private String firstIndicatorId;

    /**
     * 一级指标得分
     */
    private Float score;

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

   

    public Integer getFid() {
		return fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public String getClassificationId() {
        return classificationId;
    }

    public void setClassificationId(String classificationId) {
        this.classificationId = classificationId == null ? null : classificationId.trim();
    }

    public String getFirstIndicatorId() {
        return firstIndicatorId;
    }

    public void setFirstIndicatorId(String firstIndicatorId) {
        this.firstIndicatorId = firstIndicatorId == null ? null : firstIndicatorId.trim();
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