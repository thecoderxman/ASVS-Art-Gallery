package Art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");  
        PrintWriter pw = response.getWriter(); 
        Connection conn=null;
        String url="jdbc:mysql://localhost:3306/";
        String dbName="mydb";
        String driver="com.mysql.jdbc.Driver";
        String level = request.getParameter("member_level");

    try{ 
    	if ("customer".equals(level)) {
      String email= request.getParameter("email");  
      String pwd = request.getParameter("password1");  
      String name = request.getParameter("name");
    
      Class.forName(driver).newInstance();  
      conn = DriverManager.getConnection(url+dbName,"root", "12345678"); 
      PreparedStatement pst1 =(PreparedStatement) conn.prepareStatement("insert into login values(?,2,?)");//try2 is the name of the table  
      pst1.setString(1,email);
      pst1.setString(2,pwd);
      pst1.executeUpdate();
      PreparedStatement pst = (PreparedStatement) conn.prepareStatement("insert into customer values(?,?,?)");
      pst.setString(1,name);
      pst.setString(2,email);
      pst.setString(3,pwd);
      int i = pst.executeUpdate();
      String msg=" ";
      if(i!=0){  
        msg="Record has been inserted";
        pw.println("<font size='6' color=blue>" + msg + "</font>"); 
        RequestDispatcher rd=request.getRequestDispatcher("Customer.jsp");  
        rd.forward(request,response);  
      }  
      else{  
        msg="failed to insert the data";
        pw.println("<font size='6' color=blue>" + msg + "</font>");
       }  
      pst1.close();
    	}
    if ("artist".equals(level)) {
    		Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(url + dbName, "root", "12345678");
			String name = request.getParameter("name");
	
//			String pno = request.getParameter("mobileno");
			String email = request.getParameter("email");
			String pwd = request.getParameter("password1");

			PreparedStatement pst = (PreparedStatement) conn.prepareStatement("insert into artist values(?,?,?)");
			pst.setString(1, email);
			pst.setString(2, name);
			pst.setString(3, pwd);
			PreparedStatement pst1 = (PreparedStatement) conn.prepareStatement("insert into login values(?,1,?)");

			pst1.setString(1, email);
			pst1.setString(2, pwd);
		
		      
			int i = pst.executeUpdate();
			pst1.executeUpdate();
			// conn.commit();
			String msg = " ";
			if (i != 0) {
				msg = "Record has been inserted";
				pw.println("<font size='6' color=blue>" + msg + "</font>");
				RequestDispatcher rd = request.getRequestDispatcher("Artist.jsp");

				rd.forward(request, response);

    	
    	}
    	}  
    }

    catch (Exception e){  
      pw.println(e);  
    }  
}
}
