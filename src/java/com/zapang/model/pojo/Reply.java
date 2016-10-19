/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zapang.model.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author MumbaiZone
 */
@Entity
@Table(name="reply",catalog="zapang")
public class Reply {
      
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    long id;
    @Column(name="question")
    String question;
    @Column(name="type")
    String type;
    @Column(name="answer", length=300)
    String answer;
    @Column(name="date", length=300)
    String date;
    
    @ManyToOne
    Client client;
    

    public Reply(String type,String question, String answer, Client client) {
        this.type=type;
        this.question = question;
        this.answer = answer;
        this.client = client;
    }

    public Reply() {
    }

    public long getId() {
        return id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
    
    
}
