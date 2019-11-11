FROM archlinux-yay:latest

WORKDIR /
RUN curl -O -L https://www.factorio.com/get-download/0.17.74/headless/linux64 && \
	tar Jxvf linux64 && \
	rm linux64 && \
	/factorio/bin/x64/factorio --create server

ENTRYPOINT ["/factorio/bin/x64/factorio"]
CMD ["--start-server", "server"]
