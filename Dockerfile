FROM python:3.7

RUN pip install --extra-index-url https://hosted.chia.net/simple/ chia-blockchain

ENV FINAL_DIR /plots
ENV TMP_DIR /tmp
ENV NUMBER 1


ENTRYPOINT ["/entrypoint.sh"]

COPY entrypoint.sh /
COPY plotter /usr/local/bin
