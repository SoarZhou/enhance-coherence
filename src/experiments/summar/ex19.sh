export CUDA_VISIBLE_DEVICES=3
python run.py \
  --model=cohere_extract \
  --data_path=data/cnndaily/training_shuf.pkl \
  --input_vocab=data/cnndaily/training.vocab \
  --input_vsize 150000 \
  --ckpt_root=checkpoints/cnndaily/summar/ex19 \
  --summary_dir=log/cnndaily/summar/ex19 \
  --mode=train \
  --train_mode='sl+coherence' \
  --lr 0.5 \
  --min_lr 0.01 \
  --decay_step 30000 \
  --decay_rate 0.8 \
  --dropout 0.0 \
  --batch_size 64 \
  --max_run_steps 200000 \
  --display_freq 100 \
  --valid_path=data/cnndaily/validation_shuf.pkl \
  --valid_freq 500 \
  --checkpoint_secs 1200 \
  --use_bucketing False \
  --truncate_input True \
  --min_num_input_sents 3 \
  --emb_dim 128 \
  --num_sents_doc 80 \
  --num_words_sent 50 \
  --rel_pos_max_idx 11 \
  --enc_num_hidden 256 \
  --enc_layers 1 \
  --pos_emb_dim 64 \
  --doc_repr_dim 512 \
  --word_conv_widths '3,5,7' \
  --word_conv_filters '128,256,256' \
  --mlp_num_hiddens '512,256' \
  --coherence_coef 1.0 \
  --coh_samples 3 \
  --coherence_dir=checkpoints/archive/cnndaily/coherence/ex03 \
  --pretrain_dir=checkpoints/archive/cnndaily/summar/ex15 \
  --max_num_sents 6 \
  --max_sent_len 50 \
  --coh_emb_dim 64 \
  --gru_num_hidden 128 \
  --conv_filters "[128,256]" \
  --conv_heights "[3,3]" \
  --conv_widths "[7,5]" \
  --maxpool_widths "[2,2]" \
  --fc_num_hiddens "[512,256,128]" \

