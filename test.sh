if [[ $1 = "reddit" ]]; then
    python3 src/test.py \
      --input_path output/combined_test_output.csv \
      --output_path output/reddit_test_output.csv \
      --ER_model_path output/ER.pth \
      --IP_model_path output/IP.pth \
      --EX_model_path output/EX.pth
else
    python3 src/test.py \
      --input_path dataset/test_case_1.csv\
      --output_path output/combined_test_output.csv \
      --ER_model_path output/sample_ER.pth \
      --IP_model_path output/sample_IP.pth \
      --EX_model_path output/sample_EX.pth
fi