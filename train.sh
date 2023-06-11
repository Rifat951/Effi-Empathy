declare -a array=("EX")
arrLen=${#array[@]}
# shellcheck disable=SC2004
for (( i=1; i<${arrLen} + 1; i++ ));
do
  if [[ $1 = "reddit" ]]; then
    python3 src/train.py \
      --train_path="dataset/reddit_model_${array[$i]}.csv" \
      --lr=2e-5 \
      --batch_size=32 \
      --lambda_EI=1.0 \
      --lambda_RE=0.5 \
      --save_model \
      --save_model_path="output/reddit_${array[$i]}.pth"
      
  else
    echo "Processing ${array[$i]} File"
    python3 src/train.py \
      --train_path="dataset/ed_case1.csv" \
      --lr=2e-5 \
      --batch_size=32 \
      --lambda_EI=1.0 \
      --lambda_RE=0.5 \
      --test_path="dataset/reddit_case1.csv"\
      --save_model \
      --save_model_path="output/sample_IP.pth"\
      --save_modelq_path="outputq/sampleq_IP.pth"
  fi
done