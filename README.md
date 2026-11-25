# Demo Login WAR

A simple JSP login-form demo for practicing Maven WAR packaging and Tomcat deployment.

## Build
```bash
mvn clean package
```

Output: `target/login-app.war`

## Deploy to Tomcat
Copy `target/login-app.war` to Tomcat's `webapps/` directory, then open:
`http://EC2_PUBLIC_IP:8080/login-app/`

This is a UI/deployment exercise only. It does not implement real authentication, sessions, a database, or secure password handling. Do not enter real credentials.
