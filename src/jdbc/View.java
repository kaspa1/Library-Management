package jdbc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class View
 */
@WebServlet("/View")
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    
    public View() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
	

		String name=request.getParameter("user");
		out.print("<h1>Profile Information</h1>");
		out.print("<table border='1'><tr><th>User Name</th><th>First Name</th><th>Last Name</th><th>Email</th></tr>");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
			
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from register where username='"+name+"'");
			while(rs.next()){
				
				out.print("<tr><td>");
				out.println(rs.getString(2));
				out.print("</td>");
				out.print("<td>");
				out.println(rs.getString(4));
				out.print("</td>");
				out.print("<td>");
				out.println(rs.getString(5));
				out.print("</td>");
				out.print("<td>");
				out.println(rs.getString(6));
				out.print("</td>");
				out.print("</tr>");
				
				
				
				
			}
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.print("</table>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
