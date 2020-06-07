FROM registry.access.redhat.com/ubi8/python-36

RUN pip install --upgrade --no-cache-dir jupyterlab

EXPOSE 8888
CMD [ "jupyter","lab","--ip=0.0.0.0" ]

