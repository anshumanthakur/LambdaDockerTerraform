FROM public.ecr.aws/lambda/python:latest

COPY requirements.txt ./


COPY app ./

RUN chmod 777 ./*.py

WORKDIR /

CMD ["app.handler"]
