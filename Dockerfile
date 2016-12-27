FROM kaixhin/mxnet

# prepare pip
RUN apt-get update \
	&& apt-get install -y python-pip \
	&& apt-get install -y graphviz \
	&& pip install --upgrade pip;

# prepare python packages
RUN pip install numpy \
	&& pip install ipython \
	&& pip install jupyter \
	&& pip install matplotlib \
	&& pip install graphviz \
	&& pip install scipy \
	&& pip install Cython --upgrade \
	&& pip install -U scikit-image;

# prepare tini as the primary entry point
ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

# run jupyter
CMD jupyter notebook \
    --ip=* \
    --MappingKernelManager.time_to_dead=10 \
    --MappingKernelManager.first_beat=3 \
    --notebook-dir=/root/notebooks/