FROM adoptopenjdk/openjdk11-openj9:alpine

WORKDIR /app

ENTRYPOINT ["java", "-jar", "-server", "-Xaggressive", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseZGC", "-Xmx4G", "-Xms3G", "fabric-server-launch.jar", "-nogui"]
