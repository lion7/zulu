FROM mcr.microsoft.com/windows/servercore:ltsc2022
#ADD https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-jdk21.0.2-win_x64.msi zulu21.32.17-ca-jdk21.0.2-win_x64.msi
RUN curl -fO https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-jdk21.0.2-win_x64.msi
RUN msiexec /i zulu21.32.17-ca-jdk21.0.2-win_x64.msi ADDLOCAL=ZuluInstallation,FeatureEnvironment,FeatureJavaHome /qn
