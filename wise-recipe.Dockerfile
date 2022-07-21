FROM adoptopenjdk/openjdk11
WORKDIR /var/www/html
ADD / /var/www/html/
RUN sh /var/www/html/mvnw install
EXPOSE 8071/tcp
RUN java -jar /var/www/html/target/wise-recipe.jar

