FROM rogermiret/cron-mega-backup

ADD https://www.postgresql.org/media/keys/ACCC4CF8.asc /ACCC4CF8.asc
RUN apt-key add /ACCC4CF8.asc
RUN bash -c "echo \"deb http://apt.postgresql.org/pub/repos/apt/ `cat /etc/lsb-release | grep CODE | cut -d= -f2`-pgdg main\" | tee /etc/apt/sources.list.d/pgdg.list"
RUN apt-get update && apt-get install -y postgresql-client-13 && rm -rf /var/lib/apt/lists/* /ACCC4CF8.asc /etc/apt/sources.list.d/pgdg.list

COPY backup.sh /backup.sh

ENV PGPASSWORD=
ENV PGHOST=
ENV PGDATABASE=
ENV PGUSER=
