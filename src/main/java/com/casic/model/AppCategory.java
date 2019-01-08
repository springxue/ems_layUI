package com.casic.model;

import java.util.Date;

public class AppCategory {
    private Long id;

    private String categoryCode;

    private String categoryName;
    private Long parentId;

    private Long createBy;

    private Date creationTime;

    private Long modifyBy;

    private Date modifyDate;

    private Appinfo appinfos;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategoryCode() {
        return categoryCode;
    }

    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode == null ? null : categoryCode.trim();
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public Long getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Long createBy) {
        this.createBy = createBy;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
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

    public Appinfo getAppinfos() {
        return appinfos;
    }

    public void setAppinfos(Appinfo appinfos) {
        this.appinfos = appinfos;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Override
    public String toString() {
        return "AppCategory{" +
                "id=" + id +
                ", categoryCode='" + categoryCode + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", parentId=" + parentId +
                ", createBy=" + createBy +
                ", creationTime=" + creationTime +
                ", modifyBy=" + modifyBy +
                ", modifyDate=" + modifyDate +
                ", appinfos=" + appinfos +
                '}';
    }
}