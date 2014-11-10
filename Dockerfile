FROM ipython/scipyserver

MAINTAINER Raymond Yee  <raymond.yee@gmail.com>

RUN apt-get install wget && \
  apt-get -y install mpich2 && \
  apt-get -y install libtiff4-dev libjpeg8-dev zlib1g-dev \
    libfreetype6-dev liblcms2-dev libwebp-dev tcl8.5-dev tk8.5-dev python-tk && \
  apt-get -y install python-opencv opencv-doc opencv-data && \
  apt-get -y install python-pgmagick && \
  pip install networkx && \
  pip install scikit-image && \
  pip install sympy && \
  pip install beautifulsoup4 && \
  pip install Pillow && \
  pip install mpi4py && \
  apt-get clean -y
  
RUN pip install flickrapi==2.0.0

EXPOSE 8888

CMD /notebook.sh
