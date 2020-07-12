#!/bin/bash
#SBATCH -J paraGen3
#SBATCH -p gpucompute
# Pick nodes with feature 'foo'. Different clusters have
# different features available
# but most of the time you don't need this
# next is for specified constraints of features, p100 is for envidia
# Memory
# GPU
#SBATCH --gres=gpu:2
module load cuda91/toolkit/9.1.85
echo "starting InfoGAN2.7"
source activate infogan2.7
echo "virenv has been activated"
echo "run exeperiments"


python launchers/run_mnist_exp.py


echo "ending"

# July 2


