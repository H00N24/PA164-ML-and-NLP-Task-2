# PA164-ML-and-NLP-Task-2
PA164 Machine Learning and Natural Language Processing Task 2

Python env setup
```
python3.8 -m venv venv
. venv/bin/activate
[venv] pip install --upgrade pip setuptools wheel
[venv] pip install -r requirements.txt
```

Compile requirements
```
[venv] pip install pip-tools
[venv] pip-compile -o requirements.txt requirements.in
```

IPython kernel
```
[venv] python -m ipykernel install --user --name PA164 --display-name "PA164 ML and NLP"
```

Tqdm in Lab
```
jupyter nbextension enable --py widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager
```
