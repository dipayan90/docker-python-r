FROM docker.pkg.github.com/dipayan90/docker-python-r/codeserver:c0bb7ba7d8d1bce0df0d28c5279aa22726260265
RUN apt-get install -y gdebi-core
RUN wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.5019-amd64.deb
RUN gdebi --n rstudio-server-1.2.5019-amd64.deb
RUN useradd -u 54917 rstudio
USER rstudio
CMD ["/usr/lib/rstudio-server/bin/rserver","--server-daemonize=0","--auth-none=1"]