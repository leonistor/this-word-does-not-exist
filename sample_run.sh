#!/bin/bash
python run_language_modeling.py \
 --output_dir=models/urban_dictionary_cleaned_top_def_mu02_lr_0_0001_tw1 \
 --model_type=gpt2-weighted-loss \
 --model_name_or_path=gpt2 \
 --do_train \
 --train_data_file=data/cleaned_words_top_def_mu02_randomized.pickle \
 --do_eval \
 --eval_data_file=data/cleaned_words_top_def_mu02_randomized.pickle \
 --per_gpu_train_batch_size 2 \
 --per_gpu_eval_batch_size 2 \
 --gradient_accumulation_steps 2 \
 --urban_dictionary_dataset \
 --splits 0.95 --splits 0.05 \
 --train_split_idx 0 --eval_split_idx 1 \
 --title_scale 1.0 \
 --evaluate_during_training \
 --save_steps 10000 \
 --logging_steps 5000 \
 --eval_subsampling 0.1 \
 --learning_rate 0.0001 \
 --block_size 768 \
 --warmup_steps 500
