cp data.json local/app/LLaMA-Factory/data/demo.json
file_sha1=$(sha1sum data.json)
echo "# Step1: add content to \"local/app/LLaMA-Factory/data/dataset_info.json\" 

  \"demo\": {
    \"file_name\": \"demo.json\",
    \"file_sha1\": \"${file_sha1}\",
    \"columns\": {
      \"prompt\": \"instruction\",
      \"query\": \"input\",
      \"response\": \"output\"
    }
  },
"

echo "# Step2: Change HF_TOKEN in 42-1GPU_sft_lora_CUDA.sh"

echo "# Step3: execute command 42-1GPU_sft_lora_CUDA_srun.sh"
