<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Demo Login</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <main class="card">
    <div class="logo">DEMO</div>
    <h1>Welcome back</h1>
    <p class="muted">Sign in to continue to your demo dashboard.</p>
    <form action="welcome.jsp" method="post">
      <label for="username">Email or username</label>
      <input id="username" name="username" type="text" placeholder="aman@example.com" required>
      <label for="password">Password</label>
      <input id="password" name="password" type="password" placeholder="Enter any demo password" required>
      <button type="submit">Sign in</button>
    </form>
    <p class="foot">Training project · No real authentication</p>
  </main>
</body>
</html>
