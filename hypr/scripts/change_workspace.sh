#!/bin/bash

#!/usr/bin/env bash
# 获取所有已用 workspace 信息（JSON）
ws_json=$(hyprctl -j workspaces)
echo "所有 workspace 信息: $ws_json"

# 解析出所有存在的 workspace ID 数组
ids=($(jq '.[].id' <<<"$ws_json"))

# 找到当前正在使用的 workspace ID
# Hyprland JSON 里，用 visible 或 active 标记当前桌面
current_id=$(jq '.[] | select(.visible==true or .active==true) | .id' <<<"$ws_json")
echo "当前 workspace ID: $current_id"

# 计算下一个索引
n=${#ids[@]}
# 在数组里搜索 current_id 的索引
for i in "${!ids[@]}"; do
  if [[ "${ids[i]}" -eq "$current_id" ]]; then
    idx=$i
    break
  fi
done
next_idx=$(( (idx + 1) % n ))
next_id=${ids[$next_idx]}
echo "下一个 workspace ID: $next_id"

# 切换到下一个 workspace
hyprctl dispatch workspace "$next_id"

