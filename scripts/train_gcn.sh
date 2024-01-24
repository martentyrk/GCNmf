#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --gpus=1
#SBATCH --partition=gpu
#SBATCH --time=06:00:00
#SBATCH --output=GCN_training_allusers_run%A.out

source activate thesis
# source scripts/preamble.sh

srun python3 run_node_cls.py --name gcn_graph_0005_all_users --lr 0.0005 --epoch 200 --batch_size 256 --nhid 64 --dropout 0.1