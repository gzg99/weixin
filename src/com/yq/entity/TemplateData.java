package com.yq.entity;

/**
 * Created by Administrator on 2018/12/4.
 */
public class TemplateData {
    private String value;
    private String color;
    public TemplateData(String value,String color){
        this.value = value;
        this.color = color;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}
