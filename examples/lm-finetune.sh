export TRAIN_FILE=/home/kuangwei/bark/text-en/notebooks/distil-prototype/data/wikitext-2-raw/wiki.train.raw
#export TRAIN_FILE=/home/kuangwei/bark/text-en/notebooks/distil-prototype/data/bark-text/conversation/conversation_1-3.txt
export TEST_FILE=/home/kuangwei/bark/text-en/notebooks/distil-prototype/data/wikitext-2-raw/wiki.test.raw
#export TEST_FILE=/home/kuangwei/bark/text-en/notebooks/distil-prototype/data/bark-text/conversation/conversation_4-5_vvvsmall.txt
python run_lm_finetuning.py \
    --output_dir=output-mastiff \
    --model_type=distilbert \
    --model_name_or_path=distilbert-base-uncased \
    --do_train \
    --train_data_file=$TRAIN_FILE \
    --do_eval \
    --eval_data_file=$TEST_FILE \
    --overwrite_output_dir \
    --mlm
