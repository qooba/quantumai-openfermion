FROM pyscf/pyscf:latest
USER root
RUN pip install ase papermill[gcs]
COPY quantum.sh /usr/local/bin/quantum.sh
USER 1000
RUN git clone https://github.com/quantumlib/OpenFermion-PySCF && cd OpenFermion-PySCF && python -m pip install -e .

