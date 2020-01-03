export TRAIN_FILE=/home/kuangwei/bark/text-en/notebooks/distil-prototype/data/wikitext-2-raw/wiki.train.raw
#export TEST_FILE=/home/kuangwei/bark/text-en/notebooks/distil-prototype/data/wikitext-2-raw/wiki.test.raw
export TEST_FILE=/home/kuangwei/bark/text-en/notebooks/distil-prototype/data/bark-text/conversation/conversation_4-5_vvvsmall.txt
export EVAL_PATH=/home/kuangwei/transformers/examples/saved-models_lm-finetune/output-conversation-1-3_v2/checkpoint-500
#export EVAL_PATH=distilbert-base-uncased
python run_lm_finetuning.py \
    --output_dir=output-bark-eval \
    --model_type=distilbert \
    --model_name_or_path=distilbert-base-uncased \
    --eval_model_path=$EVAL_PATH \
    --do_train \
    --train_data_file=$TRAIN_FILE \
    --do_eval \
    --eval_data_file=$TEST_FILE \
    --overwrite_output_dir \
    --mlm
