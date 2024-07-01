# domain='reddit'
# echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

# # Specify the full path for the log file
# logfile="reddit_test_uniform_adj.txt"

# # Redirect all output (stdout and stderr) to the logfile
# exec > >(tee -a "$logfile") 2>&1

# for file in "/home/allenwang/gad_diff/gad_lggm/outputs/reddit_maxN150/checkpoints/reddit_maxN150/"*; do
#     file=$(echo "$file" | sed 's/=/\\=/g')
#     echo "file: ${file}"
#     # Check if the file ends with '.ckpt'
#     if [[ "$file" == *".ckpt" ]]; then
#         # Run the Python command with the current file
#         python3 dataset_test.py dataset.name="${domain}" general.name="test_${domain} max150 uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=12 general.setting='test' 
#     fi
# done
# echo "============================================================================================================"

domain='reddit'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

# Specify the full path for the log file
logfile="reddit10epochs_test_uniform_adj.txt"

# Redirect all output (stdout and stderr) to the logfile
exec > >(tee -a "$logfile") 2>&1

for file in "/home/allenwang/gad_diff/gad_lggm/outputs/reddit-seed notrain/checkpoints/reddit-seed notrain/"*; do
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 dataset_test.py dataset.name="${domain}" general.name="test_${domain} max150 notrain" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=12 general.setting='test' 
    fi
done
echo "============================================================================================================"


# 10 epochs reddit results
