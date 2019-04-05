FROM python:3.5-jessie
ENV TEAM_ID=MINE

RUN apt-get update -y

WORKDIR /root
RUN mkdir here
COPY ./ ./here/
RUN pip install flask
ENTRYPOINT ["python", "./here/run.py"]
EXPOSE 5000