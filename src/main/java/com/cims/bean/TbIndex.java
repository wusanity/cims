package com.cims.bean;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-06
 */
public class TbIndex {
    /**
     * 指标编号，唯一标识
     */
    private String iid;

    /**
     * 指标分类编号
     */
    private String classificationId;

    /**
     * 指标内容
     */
    private String indicatorName;

    /**
     * 父类索引，0为一级指标
     */
    private String parentId;

    public String getIid() {
        return iid;
    }

    public void setIid(String iid) {
        this.iid = iid == null ? null : iid.trim();
    }

    public String getClassificationId() {
        return classificationId;
    }

    public void setClassificationId(String classificationId) {
        this.classificationId = classificationId == null ? null : classificationId.trim();
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
}