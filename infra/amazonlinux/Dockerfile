FROM amazonlinux:2

ARG root_dir="/var/www/html"

# timezone enviroment
ENV TZ=Asia/Tokyo \
    # locale
    LANG=ja_JP.UTF-8 \
    LANGUAGE=ja_JP:ja \
    LC_ALL=ja_JP.UTF-8

RUN yum update -y \
    && yum install -y \
    # japanese package
    glibc-langpack-ja \
    httpd \
    vim

RUN useradd "ec2-user" && echo "ec2-user ALL=NOPASSWD: ALL" >> /etc/sudoers

# start apache
CMD ["apachectl", "-D", "FOREGROUND"]

# move root directory
WORKDIR ${root_dir}
