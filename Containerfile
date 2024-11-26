FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN my_flask_test create-db
RUN my_flask_test populate-db
RUN my_flask_test add-user -u admin -p admin
EXPOSE 5000
CMD ["my_flask_test", "run"]
