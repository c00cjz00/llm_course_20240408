cp data.json local/app/LLaMA-Factory/data/demo.json
file_sha1=$(sha1sum data.json)
echo "# Step1: add content to "local/app/LLaMA-Factory/data/dataset_info.json" 

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