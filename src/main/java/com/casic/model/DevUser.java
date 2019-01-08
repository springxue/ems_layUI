package com.casic.model;

import java.util.Date;
import java.util.List;

public class DevUser {
    private Long id;

    private String devCode;

    private String devName;

    private String devPassword;

    private String devEmail;

    private String devInfo;

    private Long createBy;

    private Date creationDate;

    private Long modifyBy;

    private Date modifyDate;

    private List<Appinfo> appinfoList;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDevCode() {
        return devCode;
    }

    public void setDevCode(String devCode) {
        this.devCode = devCode == null ? null : devCode.trim();
    }

    public String getDevName() {
        return devName;
    }

    public void setDevName(String devName) {
        this.devName = devName == null ? null : devName.trim();
    }

    public String getDevPassword() {
        return devPassword;
    }

    public void setDevPassword(String devPassword) {
        this.devPassword = devPassword == null ? null : devPassword.trim();
    }

    public String getDevEmail() {
        return devEmail;
    }

    public void setDevEmail(String devEmail) {
        this.devEmail = devEmail == null ? null : devEmail.trim();
    }

    public String getDevInfo() {
        return devInfo;
    }

    public void setDevInfo(String devInfo) {
        this.devInfo = devInfo == null ? null : devInfo.trim();
    }

    public Long getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Long createBy) {
        this.createBy = createBy;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Long getModifyBy() {
        return modifyBy;
    }

    public void setModifyBy(Long modifyBy) {
        this.modifyBy = modifyBy;
    }

    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }

    public List<Appinfo> getAppinfoList() {
        return appinfoList;
    }

    public void setAppinfoList(List<Appinfo> appinfoList) {
        this.appinfoList = appinfoList;
    }

    @Override
    public String toString() {
        return "DevUser{" +
                "id=" + id +
                ", devCode='" + devCode + '\'' +
                ", devName='" + devName + '\'' +
                ", devPassword='" + devPassword + '\'' +
                ", devEmail='" + devEmail + '\'' +
                ", devInfo='" + devInfo + '\'' +
                ", createBy=" + createBy +
                ", creationDate=" + creationDate +
                ", modifyBy=" + modifyBy +
                ", modifyDate=" + modifyDate +
                ", appinfoList=" + appinfoList +
                '}';
    }
}