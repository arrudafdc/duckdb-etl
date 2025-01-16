FROM python:3.12
WORKDIR /src
RUN python -m venv .venv
RUN .venv/bin/pip install --no-cache-dir --upgrade pip
COPY requirements.txt /app/
RUN .venv/bin/pip install --no-cache-dir -r requirements.txt
COPY . /src
EXPOSE 8501
CMD ["/app/.venv/bin/streamlit", "run", "app.py"]

