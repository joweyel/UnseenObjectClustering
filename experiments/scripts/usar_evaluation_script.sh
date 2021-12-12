#!/bin/bash

set -x
set -e
export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=$1

./tools/eval_net.py \
  --network seg_resnet34_8s_embedding \
  --pretrained ${UOC_CHECKPOINT}/seg_resnet34_8s_embedding_cosine_rgbd_add_sampling_epoch_$2.checkpoint.pth  \
  --pretrained_crop ${UOC_CHECKPOINT}/seg_resnet34_8s_embedding_cosine_rgbd_add_crop_sampling_epoch_$2.checkpoint.pth \
  --dataset usar_eval_object_test \
  --cfg experiments/cfgs/seg_resnet34_8s_embedding_cosine_rgbd_add_tabletop.yml

  # --cfg experiments/cfgs/seg_resnet34_8s_embedding_cosine_rgbd_add_tabletop.yml
  
