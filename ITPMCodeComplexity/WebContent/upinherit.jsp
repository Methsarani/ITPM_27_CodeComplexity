<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="">
<head>
<meta charset="ISO-8859-1">
<title>{Code}</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">



</head>
<body id="top">
	<div class="bgded overlay"
		style="background-image: url('imagers/aaa.jpeg');">
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
					<h1>
						<a href="index.jsp">{code}</a>
					</h1>
				</div>
				<nav id="mainav" class="fl_right">
					<ul class="clear">
						<li class="active"><a href="home.jsp">Home</a></li>
						<li><a href="size.jsp">Size</a></li>
						<li><a href="variable.jsp">Variables</a></li>
						<li><a href="method.jsp">Methods</a></li>
						<li><a href="inheritance.jsp">Inheritances</a></li>
						<li><a href="coupling.jsp">Coupling</a></li>
						<li><a href="control.jsp">Control Structures</a></li>
						<li><a href="total.jsp">Total Complexity</a></li>
			</header>
		</div>

		<div class="wrapper">
			<div id="pageintro" class="hoc clear">
				<article>
					<div>
						<p class="heading" style="font-size: 20px">
							Get better experience with us... <br> <br> Evaluate
							code due to the customer requirements 100% free online. No email
							required, completely anonymous.<br> <br> <br> How
							to convert PDF to Word: <br> <br>Step 1: Upload your
							file. <br>Step 2: Download your resolution pdf.
						</p>
					</div>
					<footer>
						<h3>File Upload</h3>
						<script>
							/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
							var dropdown = document
									.getElementsByClassName("dropdown-btn");
							var i;

							for (i = 0; i < dropdown.length; i++) {
								dropdown[i]
										.addEventListener(
												"click",
												function() {
													this.classList
															.toggle("active");
													var dropdownContent = this.nextElementSibling;
													if (dropdownContent.style.display === "block") {
														dropdownContent.style.display = "none";
													} else {
														dropdownContent.style.display = "block";
													}
												});
							}
						</script>




						<div id="section" class="center">
							<form action="FileUploadHandlerInheritance" enctype="multipart/form-data"
								method="post">

								<input type="file" name="file2" class="button1" /><br> <input
									type="submit" value="upload" class="button1" />
							</form>
							<br />


						</div>

					</footer>
				</article>
			</div>
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
				<h6 class="heading">Contact Us</h6>
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

</body>
</html>