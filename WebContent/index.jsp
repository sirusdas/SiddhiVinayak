<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.3.js"></script>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->



<script>
function loadXMLDoc()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("786").innerHTML+=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","dynamic.java",true);
xmlhttp.send();
}
window.onscroll = loadXMLDoc;
</script>



</head>
<body>

<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
try{
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
 rs=s.executeQuery("select * from pics where uid between "+(init+1)+" and "+fin+";");
 
 int i=0;
while(rs.next()&&i<6)
{
	 id[i]=rs.getInt(1);
 herf[i]=rs.getString(2);	
 content[i]=rs.getString(3);
 subcontent[i]=rs.getString(4);



	
%>



<% 


	%>
<%
i++;
}

img1=herf[0].split("/");
img2=herf[1].split("/");
img3=herf[2].split("/");
img4=herf[3].split("/");
img5=herf[4].split("/");
img6=herf[5].split("/");



System.out.println("N MA  MAMAm = "+img1[7]);


rs.close();
%>


















<!-- ************************************* header**************************************************88 -->
<div id="header-wrapper">
	<div id="header" class="container">
		
		<div id="logo">
			<h1><a href="#">SIDDHI VINAYAK</a></h1>
		</div><div id="menu">
			<ul>
				<li class="icon icon-ok current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li>
				<li class="icon icon-ok"><a href="#" accesskey="2" title="">Our Clients</a></li>
				<li class="icon icon-ok"><a href="#" accesskey="3" title="">About Us</a></li>
				<li class="icon icon-ok"><!--<a href="#" accesskey="4" title="">-->		
				<select name="cheeses">
                 <option value="a" selected> Home</option>
                  <option value="b"> Bangles</option>
                   <option value="c"> CAD-CAM</option>
                   <option value="d" >Ornaments</option>
                     </select>
                 </a></li>
				<li class="icon icon-ok"><a href="#" accesskey="5" title="">Contact Us</a></li>
				

			</ul>
		</div>
	</div>
</div>

<!-- ****************************************************************************************************************** -->

			<div id="slider">
				<a href="#" class="button previous-button"><span class="icon icon-double-angle-left"></span></a>
				<a href="#" class="button next-button"><span class="icon icon-double-angle-right"></span></a>
				<div class="viewer">
					<div class="reel">
						<div class="slide" >
							<a class="link" href="#">Full story ...</a>
							<img src="images/1.jpg" alt="" width="1275 px" height="375 px"  />
						</div>
						<div class="slide" >
							<a class="link" href="#">Full story ...</a>
							<img src="images/2.jpg" alt="" width="1200 px" height="375 px"  />
						</div>
						<div class="slide" >
							<a class="link" href="#">Full story ...</a>
							<img src="images/3.jpg" alt="" width="1200 px" height="375 px"  />
						</div>
					</div>
				</div>
			</div>
			
			<script type="text/javascript">
				$('#slider').slidertron({
					viewerSelector: '.viewer',
					reelSelector: '.viewer .reel',
					slidesSelector: '.viewer .reel .slide',
					advanceDelay: 3000,
					speed: 'slow',
					navPreviousSelector: '.previous-button',
					navNextSelector: '.next-button',
					slideLinkSelector: '.link'
				});
			</script>

		<!-- ****************************************************************************************************************** -->
		
		
		<div class="container1" id="786">
		
		
		<div class="boxA">
			<div class="box margin-btm">
				<img src="images/<%=img1[7]%>" alt="" height="180" width="320">
				<div class="details">
					<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			<div class="box">
				<img src="images/<%=img2[7]%>" alt="" height="220" width="320">
				<div class="details">
					<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
		</div>
		<div class="boxB">
			<div class="box">
				<img src="images/<%=img3[7]%>" alt="" height="280" width="320">
				<div class="details">
					<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			<div class="box">
				<img src="images/<%=img4[7]%>" alt="" height="140" width="320">
				<div class="details">
					<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			
		</div>
		<div class="boxC">
			<div class="box">
				<img src="images/<%=img5[7]%>" alt="" height="200" width="320">
				<div class="details">
					<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			<div class="box">
				<img src="images/<%=img6[7]%>" alt="" height="200" width="320">
				<div class="details">
					<p>Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl.</p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>

		</div>
		
    
	</div>
	
	<!-- Next ... previous codes    -->
		<div class="style18" id="Layer13">
    <div class="style18" align="center"><a href=""><span class="style18"><span class="style18">Prev </span></a>&nbsp;<a href=""><span class="style18">1</span></a><a href=""><span class="style18">2</span></a><a href=""><span class="style18">3</span></a><a href=""><span class="style18">4</span></a><a href=""><span class="style18">5 </span><a href=""><span class="style18">&nbsp;Next</span></a> </div>
    <label></label>
    <label></label>
  </div>
	<!--***********************************************************************-->	
	
   	                     					<!-- footter -->
	<div id="Layer14" class="style22">&copy; 2014 <a href="http://www.facebook.com/sirusdas" target="_blank">Sirus Das</a></div>
	
	
	<%

con.close();
rs.close();
}
catch(Exception e)
{
out.print(e);
}
  


%>
	
</body>
</html>