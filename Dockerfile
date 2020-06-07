FROM registry.access.redhat.com/ubi8/ubi:latest

# INSTALL python
RUN dnf -y install python3-pip

# RUN AS REGULAR USER
RUN groupadd user \
    && useradd -d /home/user -ms /bin/bash -g user -G user user
USER user
WORKDIR /home/user

RUN python3 -m pip install --user jupyterlab

EXPOSE 8888
CMD [ "python3","-m","jupyterlab","--ip","0.0.0.0" ]

