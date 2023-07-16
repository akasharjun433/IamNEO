package com.neo.Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neo.Controller.ProfileController;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int id;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 id = Integer.parseInt(request.getParameter("id"));
		 response.sendRedirect("Back.jsp");
		 System.out.println(id);
	}
   public static Map<List<String>,byte[]> ret() throws ClassNotFoundException, SQLException, IOException{
	   ProfileController pc = new ProfileController();
		Map<List<String>,byte[]> hm = pc.fetch(id);
		return hm;
		
   }
}
