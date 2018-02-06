FROM python:3.5
ENV PYTHONUNBUFFERED 1

#ENV C_FORCE_ROOT true

ENV APP_USER gallery
ENV APP_ROOT /var/www/
#RUN mkdir /var/www;
RUN groupadd -r ${APP_USER} \
    && useradd -r -m \
    --home-dir ${APP_ROOT} \
    -s /usr/sbin/nologin \
    -g ${APP_USER} ${APP_USER}

WORKDIR ${APP_ROOT}

#RUN mkdir /config
ADD requirement.pip /tmp/
RUN pip install -r /tmp/requirement.pip

USER ${APP_USER}
#ADD . ${APP_ROOT}