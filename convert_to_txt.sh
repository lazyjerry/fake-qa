#!/bin/bash

# 創建 TXT 輸出目錄
mkdir -p txts

# 轉換目錄文件
echo "轉換目錄.md..."
pandoc "目錄.md" -t plain -o "txts/目錄.txt"

# 轉換所有編號的 QA 文件
for i in {1..25}; do
    # 找到對應的文件
    file=$(ls ${i}.*.md 2>/dev/null | head -1)
    if [ -f "$file" ]; then
        echo "轉換 $file..."
        output_name=$(echo "$file" | sed 's/\.md$/.txt/')
        pandoc "$file" -t plain -o "txts/$output_name"
    else
        echo "找不到文件: ${i}.*.md"
    fi
done

echo "所有文件轉換完成！TXT 文件已保存在 txts/ 目錄中。"