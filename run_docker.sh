set -e
docker build -t rdhyee/deepzoom_experiments .
docker run -d -v `pwd`:/notebooks  -p 8888:8888 -e "PASSWORD=$IPN_PW_DEFAULT" rdhyee/deepzoom_experiments
