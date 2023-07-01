# 
FROM python:3.9

# 
WORKDIR /code

EXPOSE 8000

# 
COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

#   cd "C:\Users\JMerten\OneDrive - KNEX\Desktop\Docker Containers\FastApiTest\"
#   docker build -t fast_api_test .
#   docker run -d --name fast_api_test -p 8000:8000 fast_api_test
