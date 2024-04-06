# llm_course_20240408

## Install
```
# Base packages
01-install_package.sh

# Extention packages
02-extention_package.sh
```

## Training
### Remember to change HF_TOKEN in *.sh
- 1GPU_sft_lora
```
# slurm
03-1GPU_sft_lora_CUDA_srun.sh

# interactive
03-1GPU_sft_lora_CUDA.sh
```
- 1GPU_sft_qlora
```
# slurm
04-1GPU_sft_qlora_CUDA_srun.sh

# interactive
04-1GPU_sft_qlora_CUDA.sh
```
- nGPUs_sft_lora
```
# slurm
05-1Node_nGPUs_sft_lora_Accelerate_srun.sh

# interactive
05-1Node_nGPUs_sft_lora_Accelerate.sh
```
- nGPUs_sft_full
```
# slurm
06-1Node_nGPUs_sft_full_Deepspeed_srun.sh

# interactive
06-1Node_nGPUs_sft_full_Deepspeed.sh
```
- nNodes_nGPUs_sft_full
```
# slurm
07-nNode_nGPUs_sft_full_Deepspeed_srun.sh

# interactive
07-nNode_nGPUs_sft_full_Deepspeed.sh
```

## Inference and Evalute.
- Inference
```
11-inference_cli.sh
```
- Evalute
```
12-inference_evalute.sh
```

## Merage and Quantize Model
- Merage
```
21-merage_lora.sh
```
- Quantize
```
22-quantize.sh
```
- cpp
```
23-llama_cpp.sh
```
- upload to HF
```
24-upload2hf.sh
```
## Dataset
- HF
```
31-hf_datasets.sh
```
- Excel
```
32-excel_datasets.sh
```
- JSON
```
33-json_datasets.sh
```

## LLama-Factory 
- save content to llama-factory data-info.json
```
41-data_info.sh
```
- 1GPU_sft_lora (ur dataset)
```
# slurm
42-1GPU_sft_lora_CUDA_srun.sh

# interactive
42-1GPU_sft_lora_CUDA.sh
```

## Singularity-Factory 
- Execute command
```
singularity_exec.sh
```
- Interactive
```
singularity_interactive.sh
```

## Slurm
- Queue, SBATCH
```
srun_queue.sh
```
- Interactive, SRUN
```
srun_interactive.sh
```
