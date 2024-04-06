#!/bin/bash
singularity exec --nv --pwd $HOME/.local/app/LLaMA-Factory/examples/lora_multi_gpu -B ./local:$HOME/.local -B ./cache:$HOME/.cache \
/work/u00cjz00/nvidia/cuda118/c00cjz00_cuda11.8_pytorch_2.1.2-cuda11.8-cudnn8-devel.sif \
bash -c "export PATH=\$PATH:$HOME/.local/bin; HF_TOKEN=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 bash single_node.sh"