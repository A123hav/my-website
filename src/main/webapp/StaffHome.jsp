<%@page import="org.jsp.college.dto.Staff"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="assets/images/JSP.ico" type="image/x-icon">
<title>Staff Home</title>
</head>
<body>
	<%
	Staff staff = (Staff) session.getAttribute("staff");
	if (staff == null) {
		request.setAttribute("fail", "Please Login Again");
		request.getRequestDispatcher("StaffLogin.jsp").include(request, response);
	} else {
	%>
	<a href="/Staff_id.jsp"><button>View Id Card</button></a>
	<a href="/logout"><button>Logout</button></a>
	<%}%>
	<h1 id="successMessage" style="color: green">${success}</h1>
	<h1 id="failMessage" style="color: red">${fail}</h1>
</body>
<script>
	// Get the success and fail message elements
	var successMessage = document.getElementById("successMessage");
	var failMessage = document.getElementById("failMessage");

	// Check if the success message exists and display it as a pop-up alert
	if (successMessage.innerText !== "") {
		window.alert(successMessage.innerText);
		successMessage.style.display = "none"; // Hide the success message element
	}

	// Check if the fail message exists and display it as a pop-up alert
	if (failMessage.innerText !== "") {
		window.alert(failMessage.innerText);
		failMessage.style.display = "none"; // Hide the fail message element
	}
</script>

</html>