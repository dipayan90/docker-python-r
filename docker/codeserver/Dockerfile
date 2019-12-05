FROM codercom/code-server:v2 AS codeserver-image
FROM docker.pkg.github.com/dipayan90/docker-python-r/base:57c1d1a41f6821080dbdb95ac1cad3a9ee25e1f8
RUN apt-get update && apt-get install -y \
	openssl \
	net-tools \
	git \
	g++ \
	locales \
	sudo \
	dumb-init \
	vim \
	curl \
	wget
COPY --from=codeserver-image /usr/local/bin/code-server /usr/local/bin/code-server
ENV PATH=/usr/local/bin/code-server:$PATH
CMD ["dumb-init", "code-server", "--host", "0.0.0.0"]