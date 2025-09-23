# 基础镜像：OpenJDK 17
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 复制已经编译好的 Spring Boot jar
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# 创建用户组和用户，安全运行
RUN addgroup --system spring && adduser --system --ingroup spring spring

# 切换到非 root 用户
USER spring:spring

# 容器启动命令
ENTRYPOINT ["java","-jar","/app/app.jar"]

