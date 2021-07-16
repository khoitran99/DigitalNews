/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author khoi.tranvan
 */
public class Digital {
    private int id;
    private String title;
    private String content;
    private String image;
    private String author;
    private Date createdDate;
    private String description;

    public Digital(int id, String title, String content, String image, String author, Date createdDate, String description) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.image = image;
        this.author = author;
        this.createdDate = createdDate;
        this.description = description;
    }

    public Digital() {
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Digital{" + "id=" + id + ", title=" + title + ", content=" + content + ", image=" + image + ", author=" + author + ", createdDate=" + createdDate + ", description=" + description + '}';
    }
    
    
}
