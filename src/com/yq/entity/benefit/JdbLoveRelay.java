package com.yq.entity.benefit;

public class JdbLoveRelay {
    private String id;

    private Integer organizationId;

    private String organizationName;

    private String picture;

    private String pictureNote;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(Integer organizationId) {
        this.organizationId = organizationId;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getPictureNote() {
        return pictureNote;
    }

    public void setPictureNote(String pictureNote) {
        this.pictureNote = pictureNote;
    }
}