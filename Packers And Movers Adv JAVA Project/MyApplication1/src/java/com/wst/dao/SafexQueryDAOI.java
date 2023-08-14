/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wst.dao;

import com.wst.bean.SafexQuery;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public interface SafexQueryDAOI {
    public int registerUser(SafexQuery obj);
	public ArrayList<SafexQuery> getAllRecords();
	//public SafexQuery getRecordById(SafexQuery obj);
	public SafexQuery LoginCheck(SafexQuery obj);
    
}
