package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logincheck")
public class logincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logincheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name=request.getParameter("user");
			String password=request.getParameter("pwd");
			
		
		
			String dbname=null;
			String dbpwd=null;
		 String sql= "select * from register where username=? and password=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
				dbname=rs.getString(2);
				dbpwd=rs.getString(3);
			}
			
			 if(name.equals("admin")&&password.equals("Admin123")) {
					PrintWriter out=response.getWriter();
					out.println("<a href='Admin.jsp'>user profile</a>");
				}
			
			
			 else if(name.equals(dbname)&&password.equals(dbpwd)) {
				 response.sendRedirect("home.html");
				}
			
			else {
				//response.sendRedirect("login.jsp");
				PrintWriter out=response.getWriter();
				out.println("unsuccessful");
				out.println("<a href='login.jsp'>Go Back</a>");
				
				//RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				//rd.include(request,response);
				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	
	}

}
