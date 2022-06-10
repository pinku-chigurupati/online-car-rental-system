import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registeration")
public class register extends HttpServlet{
public void service(HttpServletRequest req, HttpServletResponse res) throws IOException
{
String firstname=req.getParameter("firstname");
String lastname=req.getParameter("lastname");
String username=req.getParameter("username");
String password=req.getParameter("password");
String confirmpassword=req.getParameter("confirmpassword");
String gender=req.getParameter("gender");
String gmail=req.getParameter("gmail");
String phone=req.getParameter("phone");
String answer=req.getParameter("answer");
String question=req.getParameter("question");


PrintWriter out=res.getWriter();

try {
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
System.out.println("Connection established");

PreparedStatement ps=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?,?)");
ps.setString(1, firstname);
ps.setString(2,lastname);
ps.setString(3,username);
ps.setString(4, password);
ps.setString(5,confirmpassword);
ps.setString(6, gender);
ps.setString(7,gmail);
ps.setString(8, phone);
ps.setString(9,question);
ps.setString(10,answer);


int n =ps.executeUpdate();
if(n>0)
{
	out.println("succfully inserted");
}
else {
	out.println("failed");

}
}
catch (Exception e)
{
System.out.println(e);
}
}

}

