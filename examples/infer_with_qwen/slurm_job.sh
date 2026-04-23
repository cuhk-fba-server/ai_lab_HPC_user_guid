#!/bin/bash
# --- Slurm Configuration Section ---
#SBATCH --job-name=infer_with_qwen       # job name
#SBATCH --partition=normal           # Specify partition (queue, you can use sinfo command to see which partitions are configured)
#SBATCH --nodes=1                 # Number of nodes to request
#SBATCH --ntasks-per-node=8       # Number of cores per node (please do not exceed the limit)
#SBATCH --mem=64G
#SBATCH --gres=gpu:1              # Request 1 GPU card (please do not exceed the limit)
#SBATCH --time=24:00:00           # Maximum runtime (hour:minute:second, please do not exceed the limit)
#SBATCH --output=infer_with_qwen_%j.out           # Standard output file (%j represents job ID)
#SBATCH --error=infer_with_qwen_%j.err            # Error output file

# --- Actual Execution Commands ---
echo "Currently running on node: $(hostname)"
# Load environment (if any)
# module load python/3.9

# Run the program
python infer_with_qwen.py