#!/bin/bash

# 創建 PDF 輸出目錄
mkdir -p pdfs

# 設置 PATH 以包含 LaTeX
export PATH="/usr/local/texlive/2025basic/bin/universal-darwin:$PATH"

# 轉換目錄文件
echo "轉換目錄.md..."
pandoc "目錄.md" -o "pdfs/目錄.pdf" --pdf-engine=xelatex -V mainfont="PingFang SC"

# 轉換所有編號的 QA 文件
for i in {1..25}; do
    # 找到對應的文件
    file=$(ls ${i}.*.md 2>/dev/null | head -1)
    if [ -f "$file" ]; then
        echo "轉換 $file..."
        output_name=$(echo "$file" | sed 's/\.md$/.pdf/')
        pandoc "$file" -o "pdfs/$output_name" --pdf-engine=xelatex -V mainfont="PingFang SC"
    else
        echo "找不到文件: ${i}.*.md"
    fi
done

echo "所有文件轉換完成！PDF 文件已保存在 pdfs/ 目錄中。"