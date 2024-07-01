domain='reddit_v2'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

# Specify the full path for the log file
logfile="reddit_v2_test_uniform_adj.txt"

# Redirect all output (stdout and stderr) to the logfile
exec > >(tee -a "$logfile") 2>&1

for file in "/home/allenwang/gad_diff/gad_lggm/outputs/reddit_X/checkpoints/reddit_X/"*; do
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main_test.py dataset.name="${domain}" general.name="test_${domain}_X" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=12 general.setting='test' 
    fi
done
echo "============================================================================================================"
