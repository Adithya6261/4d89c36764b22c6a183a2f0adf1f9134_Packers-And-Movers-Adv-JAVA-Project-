/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wst.test;

import com.wst.bean.SafexLoginDetails;
import com.wst.dao.SafexLoginDetailsImpl;

/**
 *
 * @author user
 */
public class Test {
    public static void main(String[] args) {
       SafexLoginDetails obj=new SafexLoginDetails();
        obj.setName("Ajay");
        obj.setEmail("aj@gmail.com");
        obj.setPassword("123");
        obj.setUser_type("admin");
        obj.setStatus("Active");
        SafexLoginDetailsImpl daoObj=new SafexLoginDetailsImpl(); 
        int r=daoObj.registerUser(obj);
        System.out.println(r);
    }
}
