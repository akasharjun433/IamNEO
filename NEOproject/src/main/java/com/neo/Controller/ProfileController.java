package com.neo.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.neo.DAO.DBUtil;

public class ProfileController {
	 public Map<List<String>,byte[]>  fetch(int id) throws ClassNotFoundException, SQLException, IOException {
	    	Connection con;
	    	Map<List<String>,byte[]> hm = new LinkedHashMap<>();
	    	String fetch = "select * from candidate where c_id=?";    	
	    	con = DBUtil.getConnection();
	    	PreparedStatement pst = con.prepareStatement(fetch);
	    	pst.setInt(1, id);
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
