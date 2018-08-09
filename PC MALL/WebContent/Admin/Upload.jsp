<%@page import="java.net.URLEncoder"%>
<%@page import="myutil.MultiPart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="myutil.MultiPart" %>
    <%@ page import="java.net.URLEncoder" %>
    <%
    MultiPart multipart = new MultiPart(request);
    String title = multipart.getParameter("title");
    String description = multipart.getParameter("description");
    String fileName = multipart.getFileName("upload_file");
    String newPath = application.getRealPath("/files/" + fileName);
    multipart.saveFile("UPLOAD_FILE", newPath);
    String url = String.format("UploadResult.jsp?TITLE=%s&DESCRIPTION=%s&FILE_NAME=%s", title, description, fileName);
    response.sendRedirect(url);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>