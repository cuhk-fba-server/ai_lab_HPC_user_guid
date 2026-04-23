#!/bin/bash
# --- Slurm 配置部分 ---
#SBATCH --job-name=infer_with_qwen       # job name
#SBATCH --partition=normal           # 指定分区（队列， 可以通过sinfo命令查看配置了哪些分区）
#SBATCH --nodes=1                 # 申请节点数量
#SBATCH --ntasks-per-node=8       # 每个节点使用的核心数（请别超出限额）
#SBATCH --mem=64G
#SBATCH --gres=gpu:1              # 申请 1 块 GPU 卡（请别超出限额）
#SBATCH --time=24:00:00           # 最大运行时间 (时:分:秒， 请别超出限额)
#SBATCH --output=infer_with_qwen_%j.out           # 标准输出文件 (%j代表作业ID)
#SBATCH --error=infer_with_qwen_%j.err            # 错误输出文件

# --- 实际执行命令 ---
echo "当前运行在节点: $(hostname)"
# 加载环境 (如果有)
# module load python/3.9

# 运行程序
python infer_with_qwen.py