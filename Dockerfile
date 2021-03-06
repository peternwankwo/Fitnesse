FROM anapsix/alpine-java

EXPOSE 80

RUN mkdir -p /FitNesseRoot

RUN apk update && apk add bash

COPY fitnesse-standalone.jar fitnesse-standalone.jar

WORKDIR /FitNesseRoot

#COPY /FitNesseRoot /FitNesseRoot



#COPY . .  (means copy everything in the current directory

#COPY runtest.bat runtest.bat

#CMD ../runtest.bat

#CMD ["nohup", "java", "-jar", "../fitnesse-standalone.jar &"]

CMD ["java", "-jar", "../fitnesse-standalone.jar", "-b", "/tmp/myresults.txt", "-c", "FitNesse.SuiteAcceptanceTests?suite&format=text"]

#ENTRYPOINT ["/bin/CMD", "exit"]

#COPY /fitnesse /fitnesse


#to duild the Fitnesse container from where the dockerfile is located: docker build -t testnode .
#to run the  Fitnesse container: docker container run --rm -p 8989:80 testnode