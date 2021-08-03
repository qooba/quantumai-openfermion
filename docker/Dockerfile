FROM pyscf/pyscf:latest
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install curl git cmake ack g++ python3-dev vim-youcompleteme tmux -yq
RUN apt-get install g++-8 -yq
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/qooba/vim-python-ide/master/setup.sh)"
RUN pip install ase papermill[gcs]
COPY quantum.sh /usr/local/bin/quantum.sh
USER 1000
RUN git clone https://github.com/quantumlib/OpenFermion-PySCF && cd OpenFermion-PySCF && python -m pip install -e .

