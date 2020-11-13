<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>파일내용읽어오기 4가지 방법</h1>

<h3>절대경로</h3>
<% 
	String path = "D:\\stsmhwork\\20201110\\WebContent\\app.txt";

	path = application.getRealPath("app.txt");
// 	path = application.getResource("app.txt");
// 	path = application.getResourceAsStream("app.txt");
	
	out.println("path = "+ path+"<br/>");
	BufferedReader br1 = new BufferedReader(new FileReader(path));
	
	try{
		String txt = null;
		while( (txt = br1.readLine()) != null){
			if(txt.contains("jpg")){
				out.println("<img src='"+txt+"' width='100'/>");
			}else{
				out.println(txt+"<br/>");
			}				
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
		br1.close();
	}
%>

<h3>getRealPath</h3>

<h3>getResource</h3>

<h3>getResourceAsStream</h3>
</body>
</html>