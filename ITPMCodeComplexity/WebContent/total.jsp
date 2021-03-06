<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="">
<head>
<meta charset="ISO-8859-1">
<title>{Code-Total Complexity}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/table.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/stylesheet.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<div class="wrapper row0">
    <div id="topbar" class="hoc clear">     
		<div class="fl_left">
			<ul class="nospace">
				<li><a href="home.jsp"><i class="fa fa-lg fa-home"></i></a></li>
				<li><a href="logn.jsp">Login</a></li>
				<li><a href="sgnup.jsp">Register</a></li>
			</ul>
		</div>
		<div class="fl_right">
			<ul class="nospace">
				<li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
				<li><i class="fa fa-envelope-o"></i>code123@gmail.com</li>
			</ul>
		</div>   
    </div>
</div>
  
<div class="wrapper row1">
    <header id="header" class="hoc clear">      
		<div id="logo" class="fl_left">
			<h1><a href="index.jsp">{code}</a></h1>
		</div>
		<nav id="mainav" class="fl_right">
			<ul class="clear">
			<li class="active"><a href="home.jsp">Home</a></li>
			<li><a href="SVM.jsp">Size</a></li>
			<li><a href="SVM.jsp">Variables</a></li>
			<li><a href="SVM.jsp">Methods</a></li>
			<li><a href="inheritance.jsp">Inheritances</a></li>
			<li><a href="coupling.jsp">Coupling</a></li>  
			<li><a href="control.jsp">Control Structures</a></li> 
			<li><a href="total.jsp">Total Complexity</a></li> 
    </header>
</div>
 
<div class="tables">
    <div id="pageintro" class="hoc clear"> 
   		<article>
			<div>
				<h2>Total Complexity of Programme</h2><br>
					<p>TCps = Cs + Cv + Cm + Ci + Ccp + Ccs</p>
			</div>
			<footer>
			
			<button class="button2">Calculate</button>
				
	<table id="sizetable1">
		<tr>
			<th>Line no</th>
			<th>Program statements</th>
			<th>Cs</th>
			<th>Cv</th>
			<th>Cm</th>
			<th>Ci</th>
			<th>Ccp</th>
			<th>Ccs</th>
			<th>TCps</th>
		</tr>
		
		<% 
		
String regex=		(String)this.getServletConfig().getServletContext().getAttribute("attribute");
	
		Map<String, Integer> table5=		(HashMap)this.getServletConfig().getServletContext().getAttribute("attribute1");
				
		System.out.println(table5);
		List list =	Arrays.asList(regex.split("\n"));
		
	for(int i=0;i<list.size();i++){
		
		%>
		<tr>
			<td><%= list.get(i).toString().split("#")[0]%></td>
			<td><%=list.get(i).toString().split("#")[1] %></td>
			<td>0</td>
			<td>0</td>
			<td>0</td>
			<td>0</td>
			<td><%=table5.get( list.get(i).toString().split("#")[0])%></td>
			<td>0</td>
			<th>0</th>
		</tr>
		
		
		<%
		
		}
		%>
		<tr>
			<td></td>
			<td> </td>
			<td></td>
			<td></td>
			<td></td>
			<td>Total</td>
			<td><%=table5.values().stream().reduce((t,v)->t+v).get().intValue()%></td>
			<td>0</td>
			<th>0</th>
		</tr>
		
	</table>
		</footer>
		</article> 
    </div>
 </div>

<div class="wrapper row4">
	<footer id="footer" class="hoc clear"> 
		<div class="one_half first">
			<h6 class="heading">{Code}</h6>
			<p class="btmspace-30">We care deeply about the quality of our services.<br>Helping the very best for customer needs.<br>Join with us & get better resolution.</p>
		</div>
    <div class="one_quarter">
		<h6 class="heading">Contact Us</h6>
		<ul class="nospace linklist contact">
			<li><i class="fa fa-map-marker"></i><address>SLIIT, Malabe, Colombo</address></li>
			<li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
			<li><i class="fa fa-envelope-o"></i> code123@gmail.com</li>
		</ul>
    </div>
    <div class="one_quarter">
		<h6 class="heading">Community</h6>
		<ul class="nospace linklist">
			<li><a href="https://www.google.com/" class="google"><i class="fa fa-google" style="font-size:30px"></i></a>  Google</li>
			<li><a href="https://www.facebook.com/" class="facebook"><i class="fa fa-facebook" style="font-size:30px"></i></a>  Facebook</a></li>
			<li><a href="https://www.youtube.com/" class="youtube"><i class="fa fa-youtube" style="font-size:30px"></i></a>  YouTube</li>
		</ul>
    </div>
	</footer>
</div>

<div class="wrapper row5">
	<div id="copyright" class="hoc clear"> 
		<p class="fl_left">Copyright &copy; 2020 - All Rights Reserved - <a href="#">{Code}</a></p> 
	</div>
</div>

<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>

</body>
</html>