/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neu.pojo;

import java.util.Set;

/**
 *
 * @author kirito
 */
public class User
{  
    private long userId;
    private String fName;
    private String lName;
    private Set<Phone> phoneNum;
    
    public User()
    {
        
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public Set<Phone> getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(Set<Phone> phoneNum) {
        this.phoneNum = phoneNum;
    }
}
