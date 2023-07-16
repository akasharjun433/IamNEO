package com.neo.Servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.neo.Bean.CandidateBean;
import com.neo.Controller.EditController;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10)
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Part filePart = (Part) request.getPart("profile");
        String fileName = filePart.getName();
		InputStream fileContent = filePart.getInputStream();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String ins = request.getParameter("ins");
		String category = request.getParameter("category");
		String phno = request.getParameter("phno");
		String dob = request.getParameter("dob");
		String locat = request.getParameter("locat");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		CandidateBean cb = new CandidateBean();
		cb.setProf(fileContent);
		cb.setName(name);
		cb.setEmail(email);
		cb.setIns(ins);
		cb.setCategory(category);
		cb.setPhno(phno);
		cb.setDob(dob);
		cb.setLocat(locat);
		cb.setGender(gender);
		cb.setAddress(address);
		EditController ed = new EditController();
		try {
			ed.update(cb,id);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
