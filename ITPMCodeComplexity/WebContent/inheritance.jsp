<%@page import="services.InheritanceComplexity"%>
<%@page import="services.InheritanceComplexityMain"%>

<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="">

<head>
<title>{Code-inheritance}</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/table.css" rel="stylesheet" type="text/css"
	media="all">
<link href="layout/styles/stylesheet.css" rel="stylesheet"
	type="text/css" media="all">
<script src="inheritance.InheritanceMain.java"></script>
<script src="inheritance.Inheritance.java"></script>
</head>

<body id="top">

	<%
		String f1 = "C:\\Users\\Dulsa\\Documents\\ITPM\\uploads\\" + request.getParameter("filename");
	FileReader fr = new FileReader(f1);
	BufferedReader br = new BufferedReader(fr);

	String lines;

	ArrayList<String> line = new ArrayList<>();

	while ((lines = br.readLine()) != null) {
		line.add(lines);

	}

	InheritanceComplexity complexity = new InheritanceComplexity(line);

	ArrayList<Integer> Count = complexity.inheritkeyline();
	%>

	<div class="wrapper row0">
		<div id="topbar" class="hoc clear">
			<div class="fl_left">
				<ul class="nospace">
					<li><a href="home.html"><i class="fa fa-lg fa-home"></i></a></li>
					<li><a href="logn.html">Login</a></li>
					<li><a href="sgnup.html">Register</a></li>
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
				<h1>
					<a href="index.html">{code}</a>
				</h1>
			</div>
			<nav id="mainav" class="fl_right">
				<ul class="clear">
					<li class="active"><a href="home.html">Home</a></li>
					<li><a href="size.html">Size</a></li>
					<li><a href="variable.html">Variables</a></li>
					<li><a href="method.html">Methods</a></li>
					<li><a href="inheritance.html">Inheritences</a></li>
					<li><a href="coupling.html">Coupling</a></li>
					<li><a href="control.html">Control Structures</a></li>
					<li><a href="total.html">Total Complexity</a></li>
		</header>
	</div>

	<div class="size1">
		<div id="pageintro" class="hoc clear">
			<article>
				<div>
					<h2>Inheritence</h2>
					<br>
					<p>Ci = No of direct inheritances + No of indirect inheritances
						+ Total inheritances</p>
				</div>
				<footer>
					<div class="dropdown">
						<button class="button1">
							Select The file<i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-content">
							<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
								3</a>
						</div>
					</div>
					<button class="button2">Calculate</button>

					<table id="sizetable1">
						<tr>
							<th>Row No</th>
							<th>Code</th>
							<th>No of Direct Inheritance</th>
							<th>No of Indirect Inheritance</th>
							<th>Total Inheritance</th>
							<th>Ci</th>

						</tr>
						<%
							for (int i = 0; i < line.size(); i++) {
						%>

						<tr>
							<td><%=(i + 1)%></td>
							<td><%=line.get(i)%></td>
							<td><%=Count.get(i)%></td>
							<td><%=Count.get(i)%></td>
							<td><%=(Count.get(i) + Count.get(i))%></td>
							<td><%=(Count.get(i) + Count.get(i))%></td>

						</tr>


						<%
							}
						%>
					</table>

					<table id="sizetable2">
						<tr>
							<th>Inherited Pattern</th>
							<th>Weight</th>
						</tr>
						<tr>
							<td>A class with no inheritance (direct or indirect)</td>
							<td>0</td>
						</tr>
						<tr>
							<td>A class inheriting (directly or indirectly) from one
								user-defined class</td>
							<td>1</td>
						</tr>
						<tr>
							<td>A class inheriting (directly or indirectly) from two
								user-defined classes</td>
							<td>2</td>
						</tr>
						<tr>
							<td>A class inheriting (directly or indirectly) from three
								user-defined classes</td>
							<td>3</td>
						</tr>
						<tr>
							<td>A class inheriting (directly or indirectly) from more
								than three user-defined classes</td>
							<td>4</td>
						</tr>
					</table>
					<button class="button3">Save</button>
				</footer>
			</article>
		</div>
	</div>

	<div class="wrapper row4">
		<footer id="footer" class="hoc clear">
			<div class="one_half first">
				<h6 class="heading">{Code}</h6>
				<p class="btmspace-30">
					We care deeply about the quality of our services.<br>Helping
					the very best for customer needs.<br>Join with us & get better
					resolution.
				</p>
			</div>
			<div class="one_quarter">
				<h6 class="heading">Contct Us</h6>
				<ul class="nospace linklist contact">
					<li><i class="fa fa-map-marker"></i>
						<address>SLIIT, Malabe, Colombo</address></li>
					<li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
					<li><i class="fa fa-envelope-o"></i> code123@gmail.com</li>
				</ul>
			</div>
			<div class="one_quarter">
				<h6 class="heading">Community</h6>
				<ul class="nospace linklist">
					<li><a href="https://www.google.com/" class="google"><i
							class="fa fa-google" style="font-size: 30px"></i></a> Google</li>
					<li><a href="https://www.facebook.com/" class="facebook"><i
							class="fa fa-facebook" style="font-size: 30px"></i></a> Facebook</a></li>
					<li><a href="https://www.youtube.com/" class="youtube"><i
							class="fa fa-youtube" style="font-size: 30px"></i></a> YouTube</li>
				</ul>
			</div>
		</footer>
	</div>

	<div class="wrapper row5">
		<div id="copyright" class="hoc clear">
			<p class="fl_left">
				Copyright &copy; 2020 - All Rights Reserved - <a href="#">{Code}</a>
			</p>
		</div>
	</div>

	<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	<script src="js/jspdf.js"></script>
	<script src="js/jquery-2.1.3.js"></script>

</body>
</html>