<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@page import= "java.net.URL,javax.xml.namespace.QName,javax.xml.ws.Service" %>
<%@page import= "com.yangnormal.sstackex.WebServiceImplService" %>
<%@page import= "com.yangnormal.sstackex.WebServiceInterface" %>
<%@ page import="com.yangnormal.sstackex.Question" %>
<%
	URL url = new URL ("http://localhost:8082/ws/stackexchange?wsdl");
	QName qname = new QName("http://ws.sstackex.yangnormal.com/","WebServiceImplService");
	WebServiceImplService webService = new WebServiceImplService(url,qname);
	WebServiceInterface ws = webService.getWebServiceImplPort();
	Question q=ws.getQuestion(1);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
					<html>
					<head>
					<title>My StackExchange</title>
					<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
					<link rel="stylesheet" type="text/css" href="css/style.css">
					</head>
					<body>
						<div class="container">
							<a class="homelink" href="http://mystackexchange.dev"><h1 id="title">My StackExchange</h1></a>
							<div class="search">
								<form action="search.php" method="post">
									<input type="text" id="searchbar" name="searchbar">
									<input type="submit" id="searchsubmit" value="Search">
								</form>
								<br>
								Can't find what you are looking for? <a href="ask.jsp">Ask here!</a>
							</div>
							<div class="content">
								<h2>Recently Asked Questions</h2>
								<hr>
									<div class="stack">
									<div class="votes"><div><% out.println(q.getVote());%></div>Votes</div>
									<div class="answers"><div><% out.println(q.getAnswerSum());%></div>Answers</div>
									<div class="questiontitle"><a href="question.jsp?id=<%out.println(q.getId());%>"><% out.println(q.getTopic());%></a></div>
									<div class="detail">asked by <a class="linkname"></a> @<% out.println(q.getDate());%>| <a class="linkedit" href="">edit</a> | <a class="linkdelete" onclick="return validatedelete()" href="">delete</a></div>
									<hr>
								</div>

							</div>	
						</div>
						<script src="js/script.js"></script>
					</body>
					</html>;
