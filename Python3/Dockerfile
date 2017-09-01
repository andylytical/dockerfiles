FROM python:3

ENV TZ=America/Chicago

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apt-get update \
    && apt-get install -y sqlite vim dos2unix bsdmainutils

CMD ["bash"]
