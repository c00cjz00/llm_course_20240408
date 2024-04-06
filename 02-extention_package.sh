#!/bin/bash
singularity exec --nv --pwd $HOME/.local/app -B ./local:$HOME/.local -B ./cache:$HOME/.cache \
/work/u00cjz00/nvidia/cuda118/c00cjz00_cuda11.8_pytorch_2.1.2-cuda11.8-cudnn8-devel.sif \
pip install deepspeed bitsandbytes optimum auto_gptq hf_transfer opencc opencc-python-reimplemented datasets openpyxl



