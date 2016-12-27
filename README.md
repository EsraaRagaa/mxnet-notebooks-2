# mxnet-notebooks
Docker build of Python 2.7, MxNet, and Jupyter Notebooks

Git clone repo
run ./build.sh
run ./run.sh

When the container is run, you need to get the access token produced by Juypter.  Run docker logs on the container and use the token reported by Juypter.  The notebook server will be running on 0.0.0.0:8888.  Enter your token and you'll be logged in.  For referenes on using Juypter, follow this link http://jupyter.readthedocs.io/en/latest/
