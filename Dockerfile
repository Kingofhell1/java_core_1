FROM openjdk:latest
WORKDIR /usr/src/app
COPY ./src .
RUN javac -sourcepath . -d out ./sample/Main.java
WORKDIR /usr/src/app/out
#CMD java -classpath ./out sample.Main
ENTRYPOINT ["src","sample.Main"]