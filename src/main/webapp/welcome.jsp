<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  String username = request.getParameter("username");
  if (username == null || username.trim().isEmpty()) {
    response.sendRedirect("index.jsp");
    return;
  }
%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Demo Welcome</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <main class="card">
    <div class="logo">DEMO</div>
    <h1>Login form submitted</h1>
    <p class="muted">Hello, <strong><%= org.apache.jasper.runtime.JspRuntimeLibrary.escapeXml(username) %></strong>.</p>
    <p>This is only a UI/deployment demo. It does not authenticate users or store passwords.</p>
    <a class="back" href="index.jsp">Back to login</a>
  </main>
</body>
</html>
