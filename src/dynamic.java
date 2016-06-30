



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import javax.servlet.*;

		     
		    
		    

/**
 * Servlet implementation class OCM
 */



/**
 * Servlet implementation class OCM
 */
@WebServlet(name = "dynamic", urlPatterns = { "/dynamic" }, asyncSupported = true)
public class dynamic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dynamic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		try {
		    
			String img1[]=new String[8];
			String img2[]=new String[8];
			String img3[]=new String[8];
			String img4[]=new String[8];
			String img5[]=new String[8];
			String img6[]=new String[8];

			
			int id[]=new int[9];
			String herf[]=new String[9];
			String content[]=new String[9];
			String subcontent[]=new String[9];
			
			
			int init=0,fin=6;
			
			HttpSession session1 = request.getSession();
			try{
			      
				init=Integer.parseInt(session1.getAttribute("init").toString());
				fin=Integer.parseInt(session1.getAttribute("fin").toString());
				init=fin;
				fin=fin+6;
				session1.setAttribute("init",init);
				session1.setAttribute("fin",fin);
			    }
			catch(Exception e)
			{
			session1.setAttribute("init",0);
			session1.setAttribute("fin",6);
			}
			
			
			
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jewll","root","");
		Statement s=con.createStatement();
		ResultSet rs;
try{
		 rs=s.executeQuery("select * from pics where uid between "+(init+1)+" and "+fin+";");
		 
		 int i=0;
		while(rs.next()&&i<6)
		{
			 id[i]=rs.getInt(1);
		 herf[i]=rs.getString(2);	
		 content[i]=rs.getString(3);
		 subcontent[i]=rs.getString(4);



			
	
		i++;
		}

		img1=herf[0].split("/");
		img2=herf[1].split("/");
		img3=herf[2].split("/");
		img4=herf[3].split("/");
		img5=herf[4].split("/");
		img6=herf[5].split("/");



		System.out.println("N MA  MAMAm = "+img1[7]);
		
		
		

	
	    	 response.setContentType("text/html");
	    	 PrintWriter pw = response.getWriter();
	    	 pw.print("		<div class='boxA'>"+
			"<div class='box margin-btm'>"+
				"<img src='images/"+img1[7]+"' alt='' height='180' width='320'>"+
				"<div class='details'>"+
					"<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>"+
				"</div>"+
				"<a href='#' class='button'>More Details</a>"+
			"</div>"+
			"<div class='box'>"+
				"<img src='images/"+img2[7]+"' alt='' height='220' width='320'>"+
				"<div class='details'>"+
					"<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>"+
				"</div>"+
				"<a href='#' class='button'>More Details</a>"+
			"</div>"+
		"</div>"+
		"<div class='boxB'>"+
			"<div class='box'>"+
				"<img src='images/"+img3[7]+"' alt='' height='280' width='320'>"+
				"<div class='details'>"+
					"<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>"+
				"</div>"+
				"<a href='#' class='button'>More Details</a>"+
			"</div>"+
			"<div class='box'>"+
				"<img src='images/"+img4[7]+"' alt='' height='140' width='320'>"+
				"<div class='details'>"+
					"<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>"+
				"</div>"+
				"<a href='#' class='button'>More Details</a>"+
			"</div>"+
			
		"</div>"+
		"<div class='boxC'>"+
			"<div class='box'>"+
				"<img src='images/"+img5[7]+"' alt='' height='200' width='320'>"+
				"<div class='details'>"+
					"<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>"+
				"</div>"+
				"<a href='#' class='button'>More Details</a>"+
			"</div>"+
			"<div class='box'>"+
				"<img src='images/"+img6[7]+"' alt='' height='200' width='320'>"+
				"<div class='details'>"+
					"<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>"+
				"</div>"+
				"<a href='#' class='button'>More Details</a>"+
			"</div>"+

		"</div>");
	    	 //s=resultSet.getString(1);
	         //System.out.println(s);
	  


		rs.close();
	
		
		
		con.close();
		rs.close();
}
catch(Exception e)
{
	System.out.println("Sorry database has no more recors");
}
		}
		catch(Exception e)
		{
		System.out.print(e);
		}
		  
		     
		     

		}
		
	}
