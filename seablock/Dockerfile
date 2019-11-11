FROM archlinux-yay:latest

WORKDIR /
RUN curl -O -L https://www.factorio.com/get-download/0.17.74/headless/linux64 && \
	tar Jxvf linux64 && \
	rm linux64

WORKDIR /factorio
COPY ./mods /factorio/mods
RUN /factorio/bin/x64/factorio --mod-directory /factorio/mods --create seablock

ENTRYPOINT ["/factorio/bin/x64/factorio"]
CMD ["--mod-directory", "/factorio/mods", "--start-server", "seablock"]
