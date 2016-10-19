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
import javax.persistence.Table;

/**
 *
 * @author MumbaiZone
 */

public class Configuration {
   
    String menuImageURL;
    String offerImageURL;
    String feedbackImageURL;
    String factsImageURL;
    List<Items> menu = new ArrayList<>();
    List<Facts> funFacts = new ArrayList<>();
    List<Facts> feedback = new ArrayList<>();
    List<Facts> facts = new ArrayList<>();

    

    public String getMenuImageURL() {
        return menuImageURL;
    }

    public void setMenuImageURL(String menuImageURL) {
        this.menuImageURL = menuImageURL;
    }

    public String getOfferImageURL() {
        return offerImageURL;
    }

    public void setOfferImageURL(String offerImageURL) {
        this.offerImageURL = offerImageURL;
    }

    public String getFeedbackImageURL() {
        return feedbackImageURL;
    }

    public void setFeedbackImageURL(String feedbackImageURL) {
        this.feedbackImageURL = feedbackImageURL;
    }

    public String getFactsImageURL() {
        return factsImageURL;
    }

    public void setFactsImageURL(String factsImageURL) {
        this.factsImageURL = factsImageURL;
    }

    public List<Items> getMenu() {
        return menu;
    }

    public void setMenu(List<Items> menu) {
        this.menu = menu;
    }

    public List<Facts> getFunFacts() {
        return funFacts;
    }

    public void setFunFacts(List<Facts> funFacts) {
        this.funFacts = funFacts;
    }

    public List<Facts> getFeedback() {
        return feedback;
    }

    public void setFeedback(List<Facts> feedback) {
        this.feedback = feedback;
    }

    public List<Facts> getFacts() {
        return facts;
    }

    public void setFacts(List<Facts> facts) {
        this.facts = facts;
    }
    
    
    
        

}
