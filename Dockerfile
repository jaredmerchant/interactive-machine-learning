FROM python:3.8

EXPOSE 8501

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install streamlit
RUN pip install -r requirements.txt

COPY . /src
RUN pip install -r requirements.txt
CMD streamlit run /src/main.py