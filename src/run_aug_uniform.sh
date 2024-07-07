domain='reddit'
echo "===========================Load domain: all_wo_${domain}" "Eval domain: ${domain}==========================="

# Specify the full path for the log file
logfile="reddit_augmentation.txt"

# Redirect all output (stdout and stderr) to the logfile
exec > >(tee -a "$logfile") 2>&1

for file in "/home/allenwang/gad_diff/gad_lggm/outputs/reddit-seed uniform/checkpoints/reddit-seed uniform/"*; do
    file=$(echo "$file" | sed 's/=/\\=/g')
    echo "file: ${file}"
    # Check if the file ends with '.ckpt'
    if [[ "$file" == *".ckpt" ]]; then
        # Run the Python command with the current file
        python3 main_gad.py dataset.name="${domain}" general.name="AUG_${domain} uniform" model.transition="uniform" general.wandb="disabled" general.ckpt_path="$file" train.batch_size=12 general.setting='augment' 
    fi
done
echo "============================================================================================================"

