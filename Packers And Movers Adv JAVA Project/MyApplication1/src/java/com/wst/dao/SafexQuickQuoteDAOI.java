/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wst.dao;

import com.wst.bean.SafexQuickQuote;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public interface SafexQuickQuoteDAOI {
    public int registerUser(SafexQuickQuote obj);
 public ArrayList<SafexQuickQuote> getAllRecord();
 //public SafexQuickQuote getRecordById(SafexQuickQuote obj);
 public SafexQuickQuote LoginCheck(SafexQuickQuote obj);
    
}
