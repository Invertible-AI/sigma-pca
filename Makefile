build:
	docker build -t slnlpca:latest .

notebook:
	docker run -u $(shell id -u):$(shell id -g) -v "$(shell pwd)":/data   -p 8888:8888 -it --rm slnlpca:latest jupyter notebook --ip='*' --NotebookApp.token='nlpca' 