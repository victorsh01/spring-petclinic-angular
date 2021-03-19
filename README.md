# Spring Petclinic Angular

## Angular frontend for Spring Petclinic

Infotiv's project for IT-Högskolan's test automation course 2021 

![alt petclinic-junit](git-res/infotiv.png)
![alt petclinic-junit](git-res/iths.png)


Warning: **client only**.
  Use REST API from backend [spring-petclinic-rest project](https://github.com/ebadi/spring-petclinic-rest)
  You need start backend server before start frontend application.

## Screenshot


After entering into the `static-content` directory (by runnin `cd static-content`), run one of the following commands to run a simple web server on port :

```
# Method 1 : using Java
curl https://jcenter.bintray.com/com/athaydes/rawhttp/rawhttp-cli/1.0/rawhttp-cli-1.0-all.jar -o rawhttp.jar
java -jar ./rawhttp.jar serve . -p 4200

# Method 2 : using python3
python -m http.server 4200

# Method 3 : using python2
python -m SimpleHTTPServer 4200

# Method 4 : using ruby
ruby -run -ehttpd . -p4200

# Method 5 : using npm
npm install -g http-server
http-server -p 4200

```

![Screenshot of Spring Petclinic Angular](git-res/screenshot.png)

