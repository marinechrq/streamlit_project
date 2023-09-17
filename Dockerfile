FROM python:3.8-slim-buster

WORKDIR /streamlit-project

RUN https://github.com/marinechrq/streamlit_project.git

RUN pip install -r requirements.txt

RUN apt-get update && apt-get install -y sudo dbus && apt-get clean

RUN pip install streamlit --upgrade

EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "uber_pickups.py", "--server.port=8501", "--server.address=0.0.0.0"]


