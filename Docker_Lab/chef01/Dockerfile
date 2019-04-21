FROM ubuntu:14.04

EXPOSE 5000

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -yq --no-install-recommends wget curl rsync && \
    wget --no-check-certificate --content-disposition "http://www.opscode.com/chef/download-server?p=ubuntu&pv=14.04&m=x86_64&v=12&prerelease=false&nightlies=false" && \
    dpkg -i chef-server*.deb && \
    rm chef-server*.deb && \
    apt-get remove -y wget && \
    rm -rf /var/lib/apt/lists/*  && \
    chef-server-ctl reconfigure && \
    chef-server-ctl install opscode-manage && \
    chef-server-ctl install opscode-reporting && \
    chef-server-ctl user-create admin admin admin admin.admin@admin.com admin --filename ~/admin.pem && \
    chef-server-ctl org-create gslab “GS Lab, Pune” --filename ~/chef-validator.pem && \


