# streamlit_project
This repository contains a Streamlit application that visualizes Uber pickups in NYC.

# Features

Display raw Uber pickups data.
Visualize the number of pickups by hour.
Show all pickups at a selected hour on a map.

# Data Source

The data is sourced from streamlit-demo-data, and it provides insights into Uber pickups in NYC.

# Installation

To run the Streamlit app locally, follow these steps:

1. Clone this repository: 
git clone https://github.com/marinechrq/streamlit_project.git
cd streamlit_project

2. Install the requirements:
pip install -r requirements.txt

3. Run the Streamlit app:
streamlit run uber_pickups.py

# Deployment

The project includes a Dockerfile for containerization. To build and run the Streamlit app in a Docker container:

1. Build the Docker image:
docker build -t streamlit_app .

2. Run the container:
docker run -p 8501:8501 streamlit_app

Visit http://localhost:8501 in your browser to view the app.

