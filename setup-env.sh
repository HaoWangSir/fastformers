cd ./transformers-fastformers

python3 setup.py install --user -f
nvidia-smi
lscpu
python3 -c "import torch; print('pytorch version=' + torch.__version__);"
pip3 uninstall onnxruntime-gpu -y
pip3 uninstall onnxruntime -y
pip uninstall onnxruntime-gpu -y
pip uninstall onnxruntime -y
pip install --upgrade --force-reinstall onnxruntime-1.3.1-cp37-cp37m-linux_x86_64.whl --user
pip3 install --upgrade --force-reinstall onnxruntime-1.3.1-cp37-cp37m-linux_x86_64.whl --user

export PYTHONPATH=$(python3 -c "import site, os; print(os.path.join(site.USER_BASE, 'lib', 'python', 'site-packages'))"):$PYTHONPATH
