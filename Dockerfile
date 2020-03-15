FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git software-properties-common libtinfo-dev
RUN apt-get update
RUN add-apt-repository ppa:hvr/ghc && apt-get update
RUN apt-get install -y ghc-8.6.5 cabal-install-3.0
RUN apt-get install -y zlib1g-dev

ENV PATH="/opt/ghc/8.6.5/bin:/opt/cabal/bin/:/root/.cabal/bin/:${PATH}"
RUN ghc --version
RUN cabal --version

RUN cabal update
RUN cd /tmp && git clone https://github.com/digital-asset/ghcide.git && cd ghcide && cabal install

CMD ["/bin/bash"]