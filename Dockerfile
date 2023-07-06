FROM archlinux:base
WORKDIR /out
ENV PYTHONUNBUFFERED=1
RUN pacman -Sy
RUN pacman -S --noconfirm python3
RUN python3 -m venv ./venv
RUN ./venv/bin/python -m ensurepip
RUN ./venv/bin/pip install --no-cache --upgrade pip setuptools
RUN ./venv/bin/pip install -q torchaudio omegaconf torch ipython numpy
COPY init.sh /init.sh
COPY ./python /python
ENTRYPOINT ["/init.sh"]