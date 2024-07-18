package com.GroundWork;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class Signup extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");

		try {
			Connection conn = DBConnection.getConnection();
			PreparedStatement ps = conn
					.prepareStatement("INSERT INTO users (username, password, email) VALUES (?, ?, ?)");
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, email);
			ps.executeUpdate();

			conn.close();
			response.sendRedirect("login.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}