#!/bin/bash

# 检查是否在 Git 仓库中
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "当前目录不是一个 Git 仓库，请切换到 Git 仓库目录后重试。"
    exit 1
fi

# 检查是否提供了提交信息
if [ -z "$1" ]; then
    echo "使用方法: ./client.sh \"提交信息\""
    exit 1
fi

# 获取提交信息
commit_message="$1"

# 添加所有更改到暂存区
git add .

# 提交更改
git commit -m "$commit_message"

# 拉取最新代码
git pull --rebase

# 推送到远程仓库
git push

# 提示完成
if [ $? -eq 0 ]; then
    echo "代码已成功推送到远程仓库。"
else
    echo "推送失败，请检查错误信息。"
fi