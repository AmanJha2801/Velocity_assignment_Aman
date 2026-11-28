# Login Web App (WAR)

JSP-based login demo for Apache Tomcat 10.1/11. No external libraries are required.

## Demo credentials
- Username: `admin`
- Password: `admin123`

## Build from source (Maven)
```bash
mvn clean package
```
Output: `target/loginwebapp.war`

## Deploy
Copy `loginwebapp.war` into Tomcat's `webapps/` directory. Tomcat auto-deploys it.
Open `http://EC2-PUBLIC-IP:8080/loginwebapp/`.

## Jenkins Freestyle
Build step: `mvn clean package`
Then use an Execute shell post-build step to copy `target/loginwebapp.war` to the Tomcat `webapps/` folder (or deploy over SSH if Jenkins is on another host).

This is a training sample only. It uses hard-coded demo credentials and is not production-ready.
