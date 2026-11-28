<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String error = null;
if ("POST".equalsIgnoreCase(request.getMethod())) {
    String u = request.getParameter("username");
    String p = request.getParameter("password");
    if ("admin".equals(u) && "admin123".equals(p)) {
        session.setAttribute("username", u);
        response.sendRedirect("dashboard.jsp");
        return;
    } else {
        error = "Invalid username or password. Please try again.";
    }
}
%>
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login | Demo Portal</title><link rel="stylesheet" href="assets/style.css"></head>
<body><div class="page"><div class="login-card"><div class="logo">LW</div>
<p class="eyebrow">WELCOME BACK</p><h1>Sign in to your account</h1><p class="sub">Enter your details to access the demo portal.</p>
<% if (error != null) { %><div class="error"><%= error %></div><% } %>
<form action="index.jsp" method="post"><label for="username">Username</label><input id="username" name="username" type="text" placeholder="Enter username" required>
<label for="password">Password</label><input id="password" name="password" type="password" placeholder="Enter password" required>
<button type="submit">Sign in <span>→</span></button></form>
<div class="demo"><strong>Demo credentials</strong><br>Username: <code>admin</code> &nbsp; Password: <code>admin123</code></div>
<p class="footer">Login Web App · Jenkins deployment demo</p></div></div></body></html>
