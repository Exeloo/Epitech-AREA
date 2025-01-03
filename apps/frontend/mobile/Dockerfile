FROM julesreyn/flutter-android-sdk:jdk17-android33-flutter3.24.3

USER root

WORKDIR /home/builder/app

COPY . .

RUN chown -R builder:builder /home/builder/explore

USER builder

RUN flutter pub get
RUN flutter build apk --release
RUN mkdir /home/builder/explore/apk

USER root

CMD ["cp", "/home/builder/app/build/app/outputs/flutter-apk/app-release.apk", "/home/builder/app/apk/client.apk"]