#!/bin/bash
mkdir -p local/app/python/
cp 32-MedQA2019.xlsx local/app/python/
cp 32-excel_datasets.py local/app/python/
singularity exec --nv --pwd $HOME/.local/app/python -B ./local:$HOME/.local -B ./cache:$HOME/.cache \
/work/u00cjz00/nvidia/cuda118/c00cjz00_cuda11.8_pytorch_2.1.2-cuda11.8-cudnn8-devel.sif \
bash -c 'export PATH=$PATH:$HOME/.local/bin; HUGGING_FACE_HUB_TOKEN=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 python 32-excel_datasets.py'
cp local/app/python/data.json .
sha1sum data.json


