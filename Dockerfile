FROM mcr.microsoft.com/mssql/server:2022-latest

RUN usermod -u 1000 mssql && groupmod -g 1000 mssql
RUN echo "mssql ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers