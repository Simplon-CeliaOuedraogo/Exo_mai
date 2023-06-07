FROM tiangolo/uwsgi-nginx-flask:python3.6
USER root
ADD /azure-vote /app
RUN pip install redis

HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost/ || exit 1