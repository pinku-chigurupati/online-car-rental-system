import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet{
public void service(HttpServletRequest req, HttpServletResponse res) throws IOException
{
String username=req.getParameter("username");
String gmail=req.getParameter("gmail");
String password=req.getParameter("password");
PrintWriter out=res.getWriter();

HttpSession ses=req.getSession();
ses.setAttribute("username",username);
try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement ps=con.prepareStatement("select * from registration where gmail=? and password=?");
ps.setString(1, gmail);
ps.setString(2,password);

ResultSet rs=ps.executeQuery();

if(rs.next())
{ses.setAttribute("username",username);

	res.sendRedirect("home.jsp");
}
else {
	
RequestDispatcher rd=req.getRequestDispatcher("login.html");
rd.include(req,res);
}

}
catch (Exception e)
{
System.out.println(e);
}
}



}

