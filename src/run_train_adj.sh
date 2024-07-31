# python3 main.py dataset.name="reddit" general.name="reddit_adj" model.transition="uniform" general.gpus=[0] train.batch_size=16 train.accumulate_grad_batches=4 general.setting='train_scratch' train.n_epochs=300

# 1500 anomaly reddit
python3 main.py dataset.name="reddit_anomaly" general.name="reddit_anomaly_marginal_v1" model.transition="marginal" general.gpus=[0] train.batch_size=24 train.accumulate_grad_batches=4 general.setting='train_scratch' train.n_epochs=300
