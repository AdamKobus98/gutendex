# FROM python:3.8.14-bullseye
# WORKDIR app/
# COPY . .
# RUN pip install -r requirements.txt
# RUN chmod 755 manage.py
# ENTRYPOINT ["python3","manage.py","migrate"]


FROM python:3.8.14-bullseye
WORKDIR app/
RUN apt-get update && apt-get -y install rsync git subversion wget zip unzip
COPY . .
#COPY manage.py manage.py
#COPY books/ books/
#COPY ./gutendex/settings.py ./gutendex/settings.py
#COPY ./gutendex/urls.py ./gutendex/urls.py
#COPY ./gutendex/wsgi.py ./gutendex/wsgi.py
#COPY requirements.txt requirements.txt
#COPY entry-point.sh entry-point.sh
RUN pip install -r requirements.txt
RUN chmod 755 entry-point.sh
ENTRYPOINT ["./entry-point.sh"]




