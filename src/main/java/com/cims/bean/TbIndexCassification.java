package com.cims.bean;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-06
 */
public class TbIndexCassification {
    /**
     * 指标分类编号，唯一标识
     */
    private String classificationId;

    /**
     * 分类名称
     */
    private String cassification;

    public String getClassificationId() {
        return classificationId;
    }

    public void setClassificationId(String classificationId) {
        this.classificationId = classificationId == null ? null : classificationId.trim();
    }

    public String getCassification() {
        return cassification;
    }

    public void setCassification(String cassification) {
        this.cassification = cassification == null ? null : cassification.trim();
    }
}