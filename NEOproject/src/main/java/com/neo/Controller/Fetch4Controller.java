package com.neo.Controller;

import java.io.*;
import java.sql.*;
import java.util.*;

import com.neo.DAO.DBUtil;

public class Fetch4Controller {
    public Map<List<String>,byte[]>  fetch() throws ClassNotFoundException, SQLException, IOException {
    	Connection con;
    	Map<List<String>,byte[]> hm = new LinkedHashMap<>();
    	String fetch = "select * from candidate where category='Newton School'";    	
    	con = DBUtil.getConnection();
    	PreparedStatement pst = con.prepareStatement(fetch);
    	ResultSet rst = pst.executeQuery();
    	
    	while(rst.next()) {
    		List<String> l = new ArrayList<>();
    		l.add(Integer.toString(rst.getInt("c_id")));
    		l.add(rst.getString("name"));
    		l.add(rst.getString("ins"));
    		l.add(rst.getString("email"));
    		l.add(rst.getString("category"));
    		l.add(rst.getString("phno"));
    		l.add(rst.getString("dob"));
    		l.add(rst.getString("locat"));
    		l.add(rst.getString("gender"));    		
    		l.add(rst.getString("address")); 
    		InputStream imageStream = rst.getBinaryStream("profile");
            byte[] imageData = imageStream.readAllBytes();
    		hm.put(l, imageData);    		
    	}
    	return hm;
    }
}
