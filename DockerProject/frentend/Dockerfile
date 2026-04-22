FROM ngnix
RUN rm -rf /usr/share/ngnix/html/*
RUN rm -rf /etc/ngnix/ngnix.conf
RUN rm -rf /etc/ngnix/conf.d/default.conf

# newly added files so i can remove defalt files and add new files to the ngnix server

COPY ngnix.conf /etc/ngnix/ngnix.conf
COPY static /usr/share/ngnix/html/