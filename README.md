# GCP-Final

## Build Docker Image For The Pyhton App From The Dockerfile , And Upload The Image To GCR

  * $ docker build -t gcp-python .
  * $ docker tag gcp-python eu.gcr.io/iti-seada/gcp-python
  * $ docker push eu.gcr.io/iti-seada/gcp-python

## Pull Another Redis Image From Docker Hub Then Push It To GCR

  * $ docker pull redis
  * $ docker tag redis eu.gcr.io/iti-seada/redis-gcr
  * $ docker push eu.gcr.io/iti-seada/redis-gcr