FROM python:3

ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /vsl
COPY src /vsl
RUN pip install -r /vsl/requirements.txt

ENV PYEXCH_AD_DOMAIN=UOFI \
    PYEXCH_EMAIL_DOMAIN=illinois.edu

CMD ["bash"]
