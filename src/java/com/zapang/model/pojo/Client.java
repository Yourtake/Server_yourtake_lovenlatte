/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zapang.model.pojo;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

/**
 *
 * @author MumbaiZone
 */
@Entity
@Table(name="client",catalog="zapang")
public class Client {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    long id;
        @Column(name="name")
    String name;
    @Column(name="ipaddress")
    String ipAddress;
    @Column(name="number")
    String phoneNumber;
    @Column(name="email")
    String emailId;
        @Column(name="date")
    String date;
            @Column(name="cookie")
    String cookie;
     @OneToMany(mappedBy="client")
     @Cascade({CascadeType.PERSIST,CascadeType.DELETE,CascadeType.SAVE_UPDATE})
      @NotFound(action=NotFoundAction.IGNORE)
    List<Reply> reply = new ArrayList<>();

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public List<Reply> getReply() {
        return reply;
    }

    public void setReply(List<Reply> reply) {
        this.reply = reply;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getCookie() {
        return cookie;
    }

    public void setCookie(String cookie) {
        this.cookie = cookie;
    }
    
}
