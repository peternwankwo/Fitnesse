FROM anapsix/alpine-java

EXPOSE 80

COPY fitnesse-standalone.jar fitnesse-standalone.jar

RUN mkdir -p /FitNesseRoot

WORKDIR /FitNesseRoot

#COPY /FitNesseRoot /FitNesseRoot



#COPY . .  (means copy everything in the current directory

CMD ["java", "-jar", "../fitnesse-standalone.jar" &&  "exit"]


#CMD ["java", "-jar", "fitnesse-standalone.jar"]

#ENTRYPOINT ["/bin/CMD", "exit"]

#COPY /fitnesse /fitnesse


#to duild the Fitnesse container from where the dockerfile is located: docker build -t testnode .
#to run the  Fitnesse container: docker container run --rm -p 8989:80 testnode