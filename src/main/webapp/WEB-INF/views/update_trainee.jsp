<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trainee Form</title>
<style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background: url('https://img.freepik.com/free-photo/colorful-arrow-symbols-mobile-phone-pen-blue-backdrop_23-2147875665.jpg?w=1380&t=st=1702473507~exp=1702474107~hmac=684ab6ae7ba72f5439c0e55957d1ff76ee4a17fe0b1f8174810ecd857ce103f3') center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #007bff;
        }

        form {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
            border-radius:10px;
        }

        label {
            font-weight: bold;
            display: block;
            margin: 10px 0 5px;
            color: #8F00FF;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: calc(100% - 20px);
            display: block;
            margin: auto;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>

    
</head>
<body>
<% 
	String ctx = application.getContextPath();
	//out.print(ctx);
	String targetUrl = ctx+"/trainee/updateTrainee";
%>

<form:form modelAttribute="trainee" action="<%=targetUrl %>" method="post">
    <label for="id">Id:</label>
    <form:input path="id" /><br/>
    
    <form:input type="text" path="firstName" placeholder="Enter First path" /><br /> 
		<form:input type="text" path="lastName" placeholder="Enter Last path" /> <br />
		<form:input type="text" path="userName" placeholder="Enter User path" /> <br /> 
		<form:input type="text" path="company" placeholder="Enter company path" /> <br />
		<form:input type="text" path="course" placeholder="Enter course path" /> <br />
		<form:input type="password" path="password" placeholder="Enter Password" /> <br />
		<form:input type="email" path="emailId" placeholder="Enter Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Check the email format it should be like ram@gmail.com" /><br />
		<form:input type="date" path="dateOfBirth" placeholder="Enter date of birth" /><br /> 
		<input type="radio"	name="gender" value="male"> Male<input type="radio" name="gender" value="female"/> Female<input type="radio" name="gender" value="others"> others <br />
		<form:input type="text" path="mobileNo" placeholder="Enter Mobile no" pattern="\d{10} "title="Enter 10 digit valid number" /><br />
		<form:input type="text" path="country" placeholder="Enter Country" /> <br /> 
		<form:input type="text" path="state" placeholder="Enter State" /> <br />
		<form:input type="text" path="city" placeholder="Enter City" /> <br />
		<form:textarea type="text" path="rfs" placeholder="Discribe Why you need this trainee"></form:textarea><br /> 
		<input type="submit" value="Submit" />
</form:form>

</body>
</html>
