Examples of applying NLPCA on three different data types are provided in three separate notebooks.


Build the docker image

```bash
docker build -t slnlpca:latest .
```

Run the jupyter notebook server

```bash
docker run -u $(id -u):$(id -g) -v "$(pwd)":/data   -p 8888:8888 -it --rm slnlpca:latest jupyter notebook --ip='*' --NotebookApp.token='nlpca' 
```

open http://localhost:8888/?token=nlpca