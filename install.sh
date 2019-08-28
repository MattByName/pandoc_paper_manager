#!/bin/bash


chmod 775 init.sh
chmod 775 make.sh
chmod 775 ppm_start_project
mkdir -p /etc/pandoc_paper_manager
cp -f project.config /etc/pandoc_paper_manager/project.config
cp -f init.sh /etc/pandoc_paper_manager/init.sh
cp -f make.sh /etc/pandoc_paper_manager/make.sh
cp -f ppm_start_project /usr/bin

