echo "开始训练 DreamerV3..."
python dreamerv3/main.py --logdir /home/ma-user/modelarts/user-job-dir/lss/logdir/$(date +%Y%m%d%H%M%S) --configs crafter --run.train_ratio 32

# 使用 Scope 查看训练结果
echo "使用 Scope 查看训练结果..."
pip install -U scope
python -m scope.viewer --basedir ~/logdir --port 8000

# 结束训练并退出虚拟环境
echo "训练完成！"