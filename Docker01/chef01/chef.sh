#!/bin/bash


chef-server-ctl reconfigure

chef-server-ctl install opscode-manage

chef-server-ctl install opscode-reporting

chef-server-ctl user-create admin admin admin admin.admin@admin.com admin --filename ~/admin.pem

chef-server-ctl org-create gslab “GS Lab, Pune” --filename ~/chef-validator.pem

chef-server-ctl org-user-add gslab admin --admin



