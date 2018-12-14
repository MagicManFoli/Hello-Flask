FROM python:3.6-alpine

# create user and go to local region
RUN adduser -D flasker
WORKDIR /home/flasker

# prepare libs
RUN pip install flask

# copy over everything thats relevant
COPY hello.py ./

# set as executable (again) to be sure
RUN chmod +x hello.py

# ??
# ENV FLASK_APP hello.py

# change owner and switch to it
RUN chown -R flasker:flasker ./
USER flasker

# flask port
EXPOSE 5000

# start custom flask stuff
ENV FLASK_APP hello.py

# can be accessed externally
ENTRYPOINT flask run --host=0.0.0.0
