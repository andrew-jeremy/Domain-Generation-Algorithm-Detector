FROM ubuntu:latest
# install dependencies
RUN apt-get update
FROM python:3
RUN pip install numpy
RUN pip install pandas
RUN pip install argparse
RUN pip install sklearn
RUN pip install tensorflow
RUN pip install keras
RUN pip install matplotlib
COPY . /code
CMD [ "python", "/code/dga_algorithm_detector.py"]
# This entrepoint can be run as with the same command line arguments as in dga_algorithm_detector.py:
# docker run dga python /code/dga_algorithm_detector.py "testfile.txt"
