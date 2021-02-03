FROM adoptopenjdk/openjdk11-openj9:alpine

WORKDIR /app

ENTRYPOINT ["java", "-jar", "-server", "-Xaggressive", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseZGC", "-Xmx3G", "-Xms3G", "fabric-server-launch.jar", "-nogui"]
