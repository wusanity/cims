package com.cims.bean;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2020-04-06
 */
public class TbUserInfo {
    /**
     * 用户编号，唯一标识
     */
    private String uid;

    /**
     * 用户名
     */
    private String uname;

    /**
     * 密码,md5加密
     */
    private String password;

    /**
     * 教师姓名/用户姓名
     */
    private String tname;

    /**
     * 性别
     */
    private String sex;

    /**
     * 职称，审核流程使用
     */
    private String title;

    /**
     * 电话
     */
    private String phone;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 是否特权,0表无特权，1表管理员，2表系统管理员
     */
    private Integer ifPrivilege;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getIfPrivilege() {
        return ifPrivilege;
    }

    public void setIfPrivilege(Integer ifPrivilege) {
        this.ifPrivilege = ifPrivilege;
    }
}