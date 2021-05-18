#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:1
#SBATCH --time=20:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=Proj_AdaCof_pred
#SBATCH --mail-type=END
#SBATCH --mail-user=yl7897@nyu.edu
#SBATCH --output=adacofnet_slurm_%j.out

cd /home/yl7897/AdaCoF-pytorch/
module load python/intel/3.8.6 cuda/10.2.89
python train.py --train /scratch/yl7897/vimeo_triplet --out_dir /scratch/yl7897/train_output/gpu4 --load /scratch/yl7897/train_output/gpu2/checkpoint/model_epoch003.pth
