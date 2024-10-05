FROM bde2020/spark-scala-template:3.0.1-hadoop3.2

ENV SPARK_MASTER_NAME spark-master
ENV SPARK_MASTER_PORT 7077
ENV SPARK_APPLICATION_JAR_LOCATION /app/transacao-municipios-scala.jar
ENV SPARK_APPLICATION_MAIN_CLASS com.minsait.exec.Transacao
ENV SPARK_APPLICATION_ARGS ""


WORKDIR /app

ADD *.txt /app/
ADD transacao-municipios-scala.jar /app/transacao-municipios-scala.jar