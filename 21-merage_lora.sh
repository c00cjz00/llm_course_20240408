#!/bin/bash
singularity exec --nv --pwd $HOME/.local/app/LLaMA-Factory -B ./local:$HOME/.local -B ./cache:$HOME/.cache \
/work/u00cjz00/nvidia/cuda118/c00cjz00_cuda11.8_pytorch_2.1.2-cuda11.8-cudnn8-devel.sif \
bash -c "CUDA_VISIBLE_DEVICES= python src/export_model.py \
--model_name_or_path meta-llama/Llama-2-7b-hf \
--adapter_name_or_path saves/LLaMA2-7B/lora/sft/checkpoint-800 \
--template default \
--finetuning_type lora \
--export_dir models/llama2-7b-sft \
--export_size 2 \
--export_legacy_format False"




