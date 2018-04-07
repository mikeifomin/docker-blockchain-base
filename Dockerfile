FROM ubuntu:16.04

RUN apt-get update -q -y && apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev \
  libboost-all-dev \
  libevent-2.0-5 \
  libevent-pthreads-2.0-5 \
  libzmq3-dev \
  libminiupnpc-dev \
  unzip \
  software-properties-common

RUN add-apt-repository -y ppa:bitcoin/bitcoin
RUN apt-get update && apt-get install -q -y libdb4.8-dev libdb4.8++-dev
