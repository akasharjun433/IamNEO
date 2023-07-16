package com.neo.Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.neo.Bean.CandidateBean;
import com.neo.DAO.DBUtil;

public class EditController {
    public void update(CandidateBean c,int id) throws ClassNotFoundException, SQLException {
    	 DBUtil db = new DBUtil();
    	 Connection con = db.getConnection();
    	 String insert = "update candidate set name=?,ins=?,email=?,phno=?,dob=?,locat=?,gender=?,address=?,profile=?,category=? where c_id=?";
    	 PreparedStatement pst = con.prepareStatement(insert);
    	 pst.setString(1, c.getName());
    	 pst.setString(2, c.getIns());
    	 pst.setString(3, c.getEmail());
    	 pst.setString(4, c.getPhno());
    	 pst.setString(5, c.getDob());
    	 pst.setString(6, c.getLocat());
    	 pst.setString(7, c.getGender());
    	 pst.setString(8, c.getAddress());
    	 pst.setBlob(9, c.getProf());
    	 pst.setString(10, c.getCategory());
    	 pst.setInt(11, id);
    	 pst.execute();
    }
}
