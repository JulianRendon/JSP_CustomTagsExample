<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@taglib prefix="mma" uri="/WEB-INF/tlds/CurrentDateTag"%>
<link href="CSS/style.css" type="text/css" rel="stylesheet">
<title>JSP Custom Tags Example</title>
</head>
<body>
	<h1>Current Day</h1>

	<p>
		<mma:currentDate />
	</p>

	<mma:ifWeekday>
		<p>Live support available at 1800-555-2222</p>
		<p>***** The message above will only be displayed if currentDate is a Weekday *****</p>
	</mma:ifWeekday>
</body>
</html>