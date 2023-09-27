for seed in 41 43
do
    python train_demo.py \
        --trainN 10 --N 10 --K 5 --Q 1 --dot \
        --model proto --encoder bert --hidden_size 768 --val_step 1000 --lr 1e-5 \
        --pretrain_ckpt path to bert-base-uncased \
        --batch_size 4 --save_ckpt ./checkpoint/temp.pth.tar \
        --cat_entity_rep \
        --seed ${seed}
done