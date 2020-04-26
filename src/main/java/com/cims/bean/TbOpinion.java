package com.cims.bean;

import java.util.Date;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-16
 */
public class TbOpinion {
    private Integer oid;

    private String type;

    private String content;

    private Date time;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}