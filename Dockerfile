FROM archlinux/base:latest

RUN pacman -Syu tar --noconfirm
RUN pacman -Scc --noconfirm

WORKDIR /opt
RUN curl -O -L https://www.factorio.com/get-download/0.17.74/headless/linux64 && \
	tar Jxvf linux64 && \
	rm linux64

WORKDIR /opt/factorio
COPY ./mods /opt/factorio/mods

ENTRYPOINT ["/opt/factorio/bin/x64/factorio"]
CMD ["--mod-directory", "/opt/factorio/mods", "--start-server", "/opt/factorio/save/savedata"]
