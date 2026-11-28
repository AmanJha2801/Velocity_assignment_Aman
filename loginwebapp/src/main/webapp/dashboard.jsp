<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String username = (String) session.getAttribute("username");
if (username == null) { response.sendRedirect("index.jsp"); return; }
%>
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dashboard | Demo Portal</title><link rel="stylesheet" href="assets/style.css"></head>
<body><div class="page"><div class="dashboard-card"><div class="logo">LW</div>
<p class="eyebrow">AUTHENTICATION SUCCESSFUL</p><h1>Welcome, <%= username %>!</h1>
<p class="sub">Your Login Web App is running successfully on Apache Tomcat.</p>
<div class="success"><span class="dot"></span> Application is live</div>
<div class="details"><div><small>Application</small><strong>loginwebapp</strong></div><div><small>Server</small><strong>Apache Tomcat 11</strong></div><div><small>Deployment</small><strong>Jenkins Freestyle</strong></div></div>
<a class="button-link" href="logout.jsp">Logout <span>→</span></a><p class="footer">Demo application · Do not use these credentials in production</p>
</div></div></body></html>
