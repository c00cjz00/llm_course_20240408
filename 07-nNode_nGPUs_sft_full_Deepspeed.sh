#!/bin/bash
export NPROC_PER_NODE=4
export MASTER_PORT=32345
export MASTER_ADDR=$(scontrol show hostnames $SLURM_JOB_NODELIST | head -n 1)
export NNODES=$SLURM_NNODES
export RANK=$SLURM_PROCID
singularity exec --nv --pwd $HOME/.local/app/LLaMA-Factory/examples/full_multi_gpu -B ./local:$HOME/.local -B ./cache:$HOME/.cache \
/work/u00cjz00/nvidia/cuda118/c00cjz00_cuda11.8_pytorch_2.1.2-cuda11.8-cudnn8-devel.sif \
bash -c 'export PATH=$PATH:$HOME/.local/bin; HF_TOKEN=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 bash multi_node.sh'
