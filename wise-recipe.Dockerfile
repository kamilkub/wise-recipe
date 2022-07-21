FROM adoptopenjdk/openjdk11

ENV JAVA_OPTION_TOOLS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8072

EXPOSE 8071/tcp
EXPOSE 8072/tcp

WORKDIR /var/www/html
ADD / /var/www/html/

RUN sh /var/www/html/mvnw install
RUN java -jar /var/www/html/target/wise-recipe.jar