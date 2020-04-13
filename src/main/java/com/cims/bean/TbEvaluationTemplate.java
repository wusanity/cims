package com.cims.bean;

import static org.assertj.core.api.Assertions.linesOf;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-06
 */
public class TbEvaluationTemplate {
    /**
     * 指标模板编号，唯一标识
     */
    private int eid;

    /**
     * 指标分类编号
     */
    private String classificationId;

    /**
     * 指标编号
     */
    private String indicatorId;

    /**
     * 指标内容
     */
    private String indicatorName;

    /**
     * 父指标编号，0为一级指标
     */
    private String parentId;

    /**
     * 权重
     */
    private String weight;

    /**
     * 状态，0表示未启用、1表示课程评价（含实验），2表示课程评价（不含实验），3表示实训评价
     */
    private Integer status;

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getClassificationId() {
        return classificationId;
    }

    public void setClassificationId(String classificationId) {
        this.classificationId = classificationId == null ? null : classificationId.trim();
    }

    public String getIndicatorId() {
        return indicatorId;
    }

    public void setIndicatorId(String indicatorId) {
        this.indicatorId = indicatorId == null ? null : indicatorId.trim();
    }

    public String getIndicatorName() {
        return indicatorName;
    }

    public void setIndicatorName(String indicatorName) {
        this.indicatorName = indicatorName == null ? null : indicatorName.trim();
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight == null ? null : weight.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}