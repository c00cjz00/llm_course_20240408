#!/bin/bash
srun --job-name demo \
--quit-on-interrupt \
--nodes 2 \
--gpus-per-node 4 \
--cpus-per-task 16 \
--ntasks-per-node 1 \
--account MST110386 \
--partition gp1d \
-o file.out -e file.err \
bash -c "./07-nNode_nGPUs_sft_full_Deepspeed.sh" &
