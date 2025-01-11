FROM julesreyn/flutter-android-sdk:jdk17-android33-flutter3.24.3

USER root

WORKDIR /home/builder/app

COPY . .

RUN chown -R builder:builder /home/builder/app

USER builder

RUN flutter pub get
RUN flutter build apk --release
RUN mkdir /home/builder/app/apk

USER root

CMD ["sh", "-c", "cp /home/builder/app/build/app/outputs/flutter-apk/app-release.apk /home/builder/app/apk/client.apk && while true; do sleep 1000; done"]