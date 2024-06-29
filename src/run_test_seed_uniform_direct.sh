# domain='reddit'
# echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

# for file in "/home/allenwang/gad_diff/gad_lggm/outputs/${domain}-seed uniform/checkpoints/${domain}-seed uniform/"*; do
#     file=$(echo "$file" | sed 's/=/\\=/g')
#     echo "file: ${file}"
#     # Check if the file ends with '.ckpt'
#     if [[ "$file" == *".ckpt" ]]; then
#         # Run the Python command with the current file
#         python3 dataset_test.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=12 general.setting='test'
#     fi
# done
# echo "============================================================================================================"


domain='reddit'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

for file in "/home/allenwang/gad_diff/gad_lggm/outputs/${domain}-seed notrain/checkpoints/${domain}-seed notrain/"*; do
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 dataset_test.py dataset.name="${domain}" dataset.sample="seed" general.name="test_${domain}_seed uniform_direct_notrain" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=12 general.setting='test'
    fi
done
echo "============================================================================================================"


# 10 epochs reddit results
